from matplotlib.ticker import (MultipleLocator, FormatStrFormatter,
                                       AutoMinorLocator)
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rcParams
from matplotlib import rc

import json
import argparse
import math
import os
import sys
import subprocess
import socket
from threading import Timer
from termcolor import colored
from collections import ChainMap
from datetime import datetime

def clean_all_bmarks(root_path, bmark_list, result_path):
  for bmark in bmark_list:
    os.chdir(os.path.join(root_path, bmark))
    make_process = subprocess.Popen(["make", "clean"],
                    stdout=subprocess.DEVNULL, stderr=subprocess.STDOUT)

    if make_process.wait() != 0:
      print(colored("Clean failed for %s" % bmark, 'red'))

  print("Finish cleaning")
  return 0

def get_time(root_path, bmark, test_types):
  os.chdir(os.path.join(root_path, bmark))
  result = { bmark: {}}
  for test_type in test_types:
    try:
      f = open(test_type+".time", 'r')
      res = float(f.readline())
      f.close()
    except Exception:
      res = math.nan
    result[bmark][test_type] = res
  return result

def run_one(path, bmark, test_type):
  os.chdir(path)

  print("Generating %s on %s " % (test_type, bmark))
  with open(test_type+".log", "w") as fd:
    make_process = subprocess.Popen(["make", "run_"+test_type], stdout=fd, stderr=fd)
    timer = Timer(600, make_process.kill)
    try:
      timer.start()
      stdout, stderr = make_process.communicate()
    finally:
      timer.cancel()
  
    if make_process.wait() != 0:
      print(colored("%s failed for %s " % (test_type, bmark), 'red'))
      return False
    else:
      print(colored("%s succeeded for %s " % (test_type, bmark), 'green'))
      return True

def run_all(root_path, bmark, tests):
  bmark_path = os.path.join(root_path, bmark)
  status = {}
  for test in tests:
    status[bmark+":"+test] = run_one(bmark_path, bmark, test)
  return status

def Postprocess(perf_dic_acc, perf_dic, bmark_list, run_num):
  for bmark in bmark_list:
    for key in perf_dic[bmark].keys():
      perf_dic[bmark][key] = 0
      for i in range(run_num):
        perf_dic[bmark][key] = perf_dic[bmark][key]+perf_dic_acc[i][bmark][key]/run_num

  # FIXME: uncomment to get speedup instead of raw numbers
  #for bmark in bmark_list:
  #  for key in perf_dic[bmark].keys():
  #    if key == 'seq':
  #      continue
  #    else:
  #      perf_dic[bmark][key] = perf_dic[bmark]['seq']/perf_dic[bmark][key]
  #  del perf_dic[bmark]['seq']

  mean = { 'geomean': {}}
  for key in perf_dic[list(perf_dic)[0]].keys():
    geo = 1
    for bmark in bmark_list:
      geo = geo*pow(perf_dic[bmark][key], 1/len(bmark_list))
    mean['geomean'][key] = geo

  perf_dic.update(mean)
  bmark_list.append('geomean')

  return perf_dic, bmark_list

def Plot(perf_dic, bmark_list):
  barWidth = 0.25
  fig, ax = plt.subplots()
  plt.figure(figsize=(16,4))
  plt.rc('axes', axisbelow=True)

  geist_list = []
  tulip_clang_list = []
  tulip_gcc_list = []
  for bmark in bmark_list:
    geist_list.append(np.log(perf_dic[bmark]['polygeist']))
    tulip_clang_list.append(np.log(perf_dic[bmark]['tulip.clang']))
    tulip_gcc_list.append(np.log(perf_dic[bmark]['tulip.gcc']))

  geist_pos = np.arange(len(bmark_list))
  clang_pos = [x + 1*barWidth for x in geist_pos]
  gcc_pos = [x + 1*barWidth for x in clang_pos]

  plt.bar(geist_pos, geist_list, width=barWidth, label='Polygeist-Clang')
  plt.bar(clang_pos, tulip_clang_list, width=barWidth, label='Tulip-Clang')
  plt.bar(gcc_pos, tulip_gcc_list, width=barWidth, label='Tulip-GCC')

  #plt.yscale('log')
  #plt.ylim(0.5,40)
  plt.grid(axis='y', linestyle='-', linewidth=1)
  #yticks = np.linspace(0, 32, 33, dtype=int)
  yticks_label = [0.5, 1, 2, 4, 8, 16, 32]
  yticks_log = [np.log(x) for x in yticks_label]
  plt.yticks(yticks_log, yticks_label, fontsize=14)
  plt.axhline(0, color='black')
  plt.xlim(min(geist_pos)-1.5*barWidth, max(geist_pos)+barWidth*4.5)
  #plt.tick_params(axis='y', directions='out', left=True, length=5, width=2)
  plt.tick_params(axis='y', which='minor', left=False)
  #plt.tick_params(axis='x', direction='out', right=True, length=5, width=2)
  plt.ylabel('Speedup (x)', fontsize = 18)
  plt.xticks([r + barWidth*3/2 for r in range(len(bmark_list))], bmark_list, rotation='-30', fontsize=16, ha="left")
  for pos in ['right', 'top', 'bottom', 'left']: 
        plt.gca().spines[pos].set_visible(False) 
  plt.legend(loc='lower left', bbox_to_anchor= (0.17, 1.01), ncol=4, 
                      borderaxespad=0, frameon=False, fontsize=18)

  plt.tight_layout()
  plt.savefig('perf_tulip.pdf')

  return True
  

def set_config():
  parser = argparse.ArgumentParser()

  parser.add_argument("-n", "--core-num", type=int, default=10,
                      help="Number of cores")

  parser.add_argument('targets', action='append')

  parser.add_argument("--clean", action='store_true')

  args = parser.parse_args()
  
  config = {}
  config['args'] = args
  config['root_path'] = os.path.join(os.getcwd(), "../polybench-cuda")

  bmark_list = ['syrk', 'syr2k', 'gemm', '2mm', '3mm', 'doitgen', 'adi', 'fdtd-2d', 'gemver', 'jacobi-1d-imper', 'jacobi-2d-imper', 'mvt', 'atax', 'bicg', 'gesummv', 'lu', 'symm', 'covariance']
  #bmark_list = ['syrk', '2mm']
  bmark_list = ['syrk', 'syr2k', 'gemm', '2mm', '3mm', 'doitgen', 'adi', 'fdtd-2d', 'gemver', 'jacobi-1d-imper', 'jacobi-2d-imper', 'mvt', 'atax', 'bicg', 'gesummv', 'lu', 'symm', 'covariance', 'correlation', 'trmm', 'cholesky', 'nussinov', 'seidel-2d', 'heat-3d']

  config['core_num'] = args.core_num
  config['bmark_list'] = bmark_list
  config['run_num'] = 1

  config['result_path'] = os.path.join(config['root_path'], "../", "tulip-results")

  results = []
  tests = []
  for target in args.targets:
    print(target)
    globals()['add_' + target](results, tests)

  print('Will run', tests)
  print('Will get results', results)

  config['results'] = results
  config['tests'] = tests

  return config

# All:
# results = ['seq', 'nvidia', 'nvidia.noelle', 'amd', 'amd.noelle', 'tulip.clang', 'tulip.clang.noelle', 'tulip.gcc', 'tulip.gcc.noelle', 'nvhpc.cpu', 'nvhpc.cpu.noelle', 'nvhpc.gpu', 'nvhpc.gpu.noelle']
# tests = ['seq', 'nvidia', 'amd', 'tulip', 'nvhpc']
def add_cuda(results, tests):
  tests.append('cuda')
  results.append('cuda')
def add_seq(results, tests):
  tests.append('seq')
  results.append('seq')
def add_clang_nvidia(results, tests):
  tests.append('clang_nvidia')
  results.append('clang_nvidia')
  results.append('clang_nvidia.noelle')
def add_clang_amd(results, tests):
  tests.append('clang_amd')
  results.append('clang_amd')
  results.append('clang_amd.noelle')
def add_aomp_nvidia(results, tests):
  tests.append('aomp_nvidia')
  results.append('aomp_nvidia')
  results.append('aomp_nvidia.noelle')
def add_aomp_amd(results, tests):
  tests.append('aomp_amd')
  results.append('aomp_amd')
  results.append('aomp_amd.noelle')
def add_gcc_nvidia(results, tests):
  tests.append('gcc_nvidia')
  results.append('gcc_nvidia')
  results.append('gcc_nvidia.noelle')
def add_gcc_amd(results, tests):
  tests.append('gcc_amd')
  results.append('gcc_amd')
  results.append('gcc_amd.noelle')
def add_tulip(results, tests):
  tests.append('tulip')
  results.append('tulip.icx')
  results.append('tulip.icx.noelle')
  results.append('tulip.clang')
  results.append('tulip.clang.noelle')
  results.append('tulip.gcc')
  results.append('tulip.gcc.noelle')
def add_nvhpc_nvidia(results, tests):
  tests.append('nvhpc_nvidia')
  results.append('nvhpc.gpu')
  results.append('nvhpc.gpu.noelle')
def add_polygeist_nvidia(results, tests):
  tests.append('polygeist_nvidia')
  results.append('polygeist_nvidia')
def add_polygeist_amd(results, tests):
  tests.append('polygeist_amd')
  results.append('polygeist_amd')
def add_nvhpc_cpu(results, tests):
  tests.append('nvhpc_cpu')
  results.append('nvhpc.cpu')
  results.append('nvhpc.cpu.noelle')

if __name__ == "__main__":
  config = set_config()
  if not config:
    print("Bad configuration, please start over.")
    sys.exit(1)

  results = config['results']
  tests = config['tests']

  print("\n\n### Experiment Start ####")

  if not os.path.exists(config['result_path']):
    os.makedirs(config['result_path'])

  os.chdir(config['result_path'])
  log_path = os.path.join(config['result_path'], "results.log")


  if config['args'].clean:
    clean_all_bmarks(config['root_path'], config['bmark_list'], config['result_path'])
  
  perf_dic_acc = {}
  for j in range(config['run_num']):
    perf_dic = {}
    perf_list = []
    for bmark in config['bmark_list']:
      run_all(config['root_path'], bmark, tests)
      perf_list.append(get_time(config['root_path'], bmark, results))
    for i, bmark in enumerate(config['bmark_list']):
      perf_dic.update(perf_list[i])
    perf_dic_acc[j] = perf_dic

  perf_dic = {}
  for bmark in config['bmark_list']:
    perf_dic[bmark] = {}
    for result in results:
      perf_dic[bmark][result] = 0
  perf_dic, config['bmark_list'] = Postprocess(perf_dic_acc, perf_dic, config['bmark_list'], config['run_num'])

  print(perf_dic)

  os.chdir(config['result_path'])
  with open("nvidia_omp_results." + socket.gethostname() + '.' + datetime.utcnow().isoformat() + ".json", "w") as outfile:
    json.dump(perf_dic, outfile)
  #Plot(perf_dic, config['bmark_list'])
    #for i, bmark in enumerate(config['bmark_list']):
      #perf_list_polygeist[i][bmark].update



/* Provide Declarations */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifndef __cplusplus
typedef unsigned char bool;
#endif

#ifndef _MSC_VER
#define __forceinline __attribute__((always_inline)) inline
#endif

#if defined(__GNUC__)
#define  __ATTRIBUTELIST__(x) __attribute__(x)
#else
#define  __ATTRIBUTELIST__(x)
#endif

#ifdef _MSC_VER  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif



/* Global Declarations */

/* Types Declarations */
struct l_struct_struct_OC__IO_FILE;
struct l_struct_struct_OC_dim3;
struct l_unnamed_1;

/* Function definitions */

/* Types Definitions */
struct l_array_1_uint8_t {
  uint8_t array[1];
};
struct l_array_20_uint8_t {
  uint8_t array[20];
};
struct l_struct_struct_OC__IO_FILE {
  uint32_t field0;
  uint8_t* field1;
  uint8_t* field2;
  uint8_t* field3;
  uint8_t* field4;
  uint8_t* field5;
  uint8_t* field6;
  uint8_t* field7;
  uint8_t* field8;
  uint8_t* field9;
  uint8_t* field10;
  uint8_t* field11;
  void* field12;
  struct l_struct_struct_OC__IO_FILE* field13;
  uint32_t field14;
  uint32_t field15;
  uint64_t field16;
  uint16_t field17;
  uint8_t field18;
  uint8_t field19[1];
  uint8_t* field20;
  uint64_t field21;
  void* field22;
  void* field23;
  struct l_struct_struct_OC__IO_FILE* field24;
  uint8_t* field25;
  uint64_t field26;
  uint32_t field27;
  uint8_t field28[20];
};
struct l_struct_struct_OC_dim3 {
  uint32_t field0;
  uint32_t field1;
  uint32_t field2;
};
struct l_unnamed_1 {
  uint64_t field0;
  uint32_t field1;
};

/* External Global Variable Declarations */

/* Function Declarations */
uint32_t cudaSetupArgument(uint8_t*, uint64_t, uint64_t);
uint32_t cudaLaunch(uint8_t*);
int main(int, char **) __ATTRIBUTELIST__((noinline));
void _ZL10init_arrayiiPd(uint32_t, uint32_t, double*) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t cudaMemcpy(uint8_t*, uint8_t*, uint64_t, uint32_t);
void _ZL6kerneliiPdS_S_(uint32_t, uint32_t, double*, double*, double*) __ATTRIBUTELIST__((noinline));
void _ZL11print_arrayiPd(uint32_t, double*) __ATTRIBUTELIST__((noinline));
uint32_t _ZL10num_blocksii(uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
uint32_t cudaConfigureCall(uint64_t, uint32_t, uint64_t, uint32_t, uint64_t, void*);
uint32_t cudaMalloc(uint8_t**, uint64_t);
void _Z11kernel_meaniiPdS_S__OC_1(uint32_t, uint32_t, double*, double*, double*, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
void _Z13kernel_reduceiiPdS_S__OC_2(uint32_t, uint32_t, double*, double*, double*, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));
void _Z10kernel_coviiPdS_S__OC_3(uint32_t, uint32_t, double*, double*, double*, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t, uint32_t) __ATTRIBUTELIST__((noinline, nothrow));


/* Global Variable Definitions and Initialization */
uint8_t _OC_str[8] = { "%0.2lf " };
uint8_t _OC_str_OC_1[2] = { "\n" };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_add_u64(uint64_t a, uint64_t b) {
  uint64_t r = a + b;
  return r;
}
static __forceinline uint32_t llvm_sub_u32(uint32_t a, uint32_t b) {
  uint32_t r = a - b;
  return r;
}
static __forceinline uint32_t llvm_mul_u32(uint32_t a, uint32_t b) {
  uint32_t r = a * b;
  return r;
}
static __forceinline uint64_t llvm_mul_u64(uint64_t a, uint64_t b) {
  uint64_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_sdiv_u32(int32_t a, int32_t b) {
  uint32_t r = a / b;
  return r;
}
static __forceinline uint32_t llvm_srem_u32(int32_t a, int32_t b) {
  uint32_t r = a % b;
  return r;
}


/* Function Bodies */

int main(int argc, char ** argv) {
  int32_t dump_code;
  int32_t n;
  int32_t m;
  uint8_t* data;
  uint8_t* mean;
  uint8_t* cov;
  int32_t call28;
  int32_t call39;

  dump_code = atoi(argv[1]);
  n = atoi(argv[2]);
  m = atoi(argv[3]);
  data = malloc(n * m * 8);
  mean = malloc(m * 8);
  cov = malloc(m * m * 8);
  _ZL10init_arrayiiPd(m, n, ((double*)data));
;
#pragma omp target data map(to: data[0:n * m * 8]) map(alloc:mean[0:m * 8]) map(from: cov[0:m * m * 8])
{
  _ZL6kerneliiPdS_S_(m, n, ((double*)data), ((double*)cov), ((double*)mean));
;

}
  if (dump_code == 1) {
_ZL11print_arrayiPd(m, ((double*)cov));
  }
free(((uint8_t*)((double*)data)));
free(((uint8_t*)((double*)cov)));
free(((uint8_t*)((double*)mean)));
  return 0;
}


void _ZL10init_arrayiiPd(uint32_t m, uint32_t n, double* data) {
  int64_t i;
  int64_t j;

#pragma omp parallel for
for(int64_t i = 0; i < n;   ++i){

for(int64_t j = 0; j < m;   ++j){
  data[(i * m + j)] = (((double)(i) * (double)(j)) / 1000);
}
}
  return;
}


void _ZL6kerneliiPdS_S_(uint32_t m, uint32_t n, double* data, double* cov, double* mean) {
  struct l_struct_struct_OC_dim3 block;    /* Address-exposed local */
  int32_t call;
  int32_t call3;
  int32_t call4;
  int32_t call14;
  int32_t call17;

  block.field0 = 8;
  block.field1 = 32;
  call = _ZL10num_blocksii(m, 256);
  call3 = _ZL10num_blocksii(n, block.field0);
  call4 = _ZL10num_blocksii(m, block.field1);
  call14 = _ZL10num_blocksii((m - 1), block.field0);
  call17 = _ZL10num_blocksii((m - 1), block.field1);
#pragma omp target teams distribute parallel for collapse(2) thread_limit(256)

for(int32_t i = 0; i < call;   ++i){
//#pragma omp parallel for

for(int32_t j = 0; j < 256;   ++j){
_Z11kernel_meaniiPdS_S__OC_1(m, n, data, cov, mean, call, 1, 1, 256, 1, 1, i, 0, 0, j, 0, 0);
}
}
#pragma omp target teams distribute parallel for collapse(2) thread_limit(256)
for(int32_t k = 0; k < call3;   ++k){

for(int32_t l = 0; l < call4;   ++l){
//#pragma omp parallel for collapse(2)
for(int32_t i = 0; i < 8;   ++i){

for(int32_t j = 0; j < 32;   ++j){
_Z13kernel_reduceiiPdS_S__OC_2(m, n, data, cov, mean, 8, 32, 1, call3, call4, 1, i, j, 0, k, l, 0);
}
}
}
}
#pragma omp target teams distribute parallel for collapse(2) thread_limit(256)
for(int32_t k = 0; k < call14;   ++k){

for(int32_t l = 0; l < call17;   ++l){
//#pragma omp parallel for collapse(2)
for(int32_t i = 0; i < 8;   ++i){

for(int32_t j = 0; j < 32;   ++j){
_Z10kernel_coviiPdS_S__OC_3(m, n, data, cov, mean, 8, 32, 1, call14, call17, 1, i, j, 0, k, l, 0);
}
}
}
}
  return;
}


void _ZL11print_arrayiPd(uint32_t m, double* cov) {
  int64_t i;
  uint64_t j;
  int32_t call11;


for(int64_t i = 0; i < m;   ++i){

for(int64_t j = 0; j < m;   ++j){
  uint32_t call = fprintf(stderr, _OC_str, cov[(i * m + j)]);
  if ((int)(i * m + j) % (int)20 == 0) {
  fprintf(stderr, _OC_str_OC_1);
  }
}
}
  fprintf(stderr, _OC_str_OC_1);
}


uint32_t _ZL10num_blocksii(uint32_t num, uint32_t factor) {
  return ((num + factor) - 1) / factor;
}


void _Z11kernel_meaniiPdS_S__OC_1(uint32_t m, uint32_t n, double* data, double* cov, double* mean, uint32_t gridDim_2e_x, uint32_t gridDim_2e_y, uint32_t gridDim_2e_z, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockDim_2e_z, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t blockIdx_2e_z, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y, uint32_t threadIdx_2e_z) {
  int64_t j;
  int64_t i;

  j = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;
  if (j < m) {
  mean[j] = 0;

for(int64_t i = 0; i < n;   ++i){
  mean[j] = (mean[j] + data[(i * m + j)]);
}
  mean[j] = (mean[j] / (double)(n));
  }
  return;
}


void _Z13kernel_reduceiiPdS_S__OC_2(uint32_t m, uint32_t n, double* data, double* cov, double* mean, uint32_t gridDim_2e_x, uint32_t gridDim_2e_y, uint32_t gridDim_2e_z, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockDim_2e_z, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t blockIdx_2e_z, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y, uint32_t threadIdx_2e_z) {
  int32_t i;
  int64_t j;

  i = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;
  j = blockDim_2e_y * blockIdx_2e_y + threadIdx_2e_y;
  if (i < n) {
  if (j < m) {
  data[(i * m + j)] = (data[(i * m + j)] - mean[j]);
  }
  }
  return;
}


void _Z10kernel_coviiPdS_S__OC_3(uint32_t m, uint32_t n, double* data, double* cov, double* mean, uint32_t gridDim_2e_x, uint32_t gridDim_2e_y, uint32_t gridDim_2e_z, uint32_t blockDim_2e_x, uint32_t blockDim_2e_y, uint32_t blockDim_2e_z, uint32_t blockIdx_2e_x, uint32_t blockIdx_2e_y, uint32_t blockIdx_2e_z, uint32_t threadIdx_2e_x, uint32_t threadIdx_2e_y, uint32_t threadIdx_2e_z) {
  int32_t i;
  int32_t j;
  int64_t k;

  i = blockDim_2e_x * blockIdx_2e_x + threadIdx_2e_x;
  j = blockDim_2e_y * blockIdx_2e_y + threadIdx_2e_y + i;
  if (i < m) {
  if (j < m) {
  cov[(i * m + j)] = 0;

for(int64_t k = 0; k < n;   ++k){
  cov[(i * m + j)] = (cov[(i * m + j)] + (data[(k * m + i)] * data[(k * m + j)]));
}
  cov[(i * m + j)] = (cov[(i * m + j)] / ((double)(n) - 1));
  cov[(j * m + i)] = cov[(i * m + j)];
  }
  }
  return;
}


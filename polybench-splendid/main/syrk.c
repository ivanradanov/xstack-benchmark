
int main(int argc, char ** argv) {
  uint32_t _argc = (uint32_t)argc;
  uint8_t** _argv = (uint8_t**)argv;
  uint64_t _call_2e_i = strtol(_argv[1], ((uint8_t**)0), 10);
  uint64_t ni = strtol(_argv[2], ((uint8_t**)0), 10);
  uint64_t nj = strtol(_argv[3], ((uint8_t**)0), 10);
  uint8_t* C = malloc((ni << 3) * ni);
  uint8_t* A = malloc(nj * (ni << 3));
  if (_call_2e_i == 1) {
for(uint64_t i = 0; i < ni;  i = i + 1){
for(uint64_t j = 0; j < ni;  j = j + 1){
  fprintf(stderr, (_OC_str), (((double*)C)+i * ni)[j]);
  if ((int)(i * ni + j) % (int)20 == 0) {
  fputc(10, stderr);
}

}
}
  fputc(10, stderr);
}

free(C);
free(A);
  return 0;
}

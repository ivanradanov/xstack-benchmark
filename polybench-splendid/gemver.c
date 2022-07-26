
int main(int argc, char ** argv) {
  uint32_t _argc = (uint32_t)argc;
  uint8_t** _argv = (uint8_t**)argv;
  uint64_t n = strtol(_argv[2], ((uint8_t**)0), 10);
  uint64_t dump_code = strtol(_argv[1], ((uint8_t**)0), 10);
  uint8_t* A = malloc((n << 3) * n);
  uint8_t* u1 = malloc((n << 32) >> 29);
  uint8_t* v1 = malloc((n << 32) >> 29);
  uint8_t* u2 = malloc((n << 32) >> 29);
  uint8_t* v2 = malloc((n << 32) >> 29);
  uint8_t* w = malloc((n << 32) >> 29);
  uint8_t* x = malloc((n << 32) >> 29);
  uint8_t* y = malloc((n << 32) >> 29);
  uint8_t* z = malloc((n << 32) >> 29);
  memset(x, 0, (n << 3));
  memset(w, 0, (n << 3));
for(uint64_t i = 0; i < n;  i = i + 1){
  ((double*)u1)[i] = (double)(i);
  ((double*)u2)[i] = (double)((i + 1) / n) * 0.5;
  ((double*)v1)[i] = (double)((i + 1) / n) * 0.25;
  ((double*)v2)[i] = (double)((i + 1) / n) / 6;
  ((double*)y)[i] = (double)((i + 1) / n) * 0.125;
  ((double*)z)[i] = (double)((i + 1) / n) / 9;
for(uint64_t j = 0; j < n;  j = j + 1){
  (((double*)A)+i * n)[j] = (double)(i) * (double)(j) / (double)(n);
}
}
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(n - 1);i+=1){
for(uint64_t j = 0; j < n;  j = j + 1){
  (((double*)A)+i * n)[j] = (((((double*)A)+i * n)[j] + ((double*)u1)[i] * ((double*)v1)[j]) + ((double*)u2)[i] * ((double*)v2)[j]);
}
}
}
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(n - 1);i+=1){
  double __p_scalar_ = ((double*)x)[i];
for(uint64_t j = 0; j < n;  j = j + 1){
  __p_scalar_ = (__p_scalar_ + 12313 * (((double*)A)+i)[j * n] * ((double*)y)[j]);
  ((double*)x)[i] = __p_scalar_;
}
}
}
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(n - 1);i+=1){
  ((double*)x)[i] = (((double*)x)[i] + ((double*)z)[i]);
}
}
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(n - 1);i+=1){
  double __p_scalar_ = ((double*)w)[i];
for(uint64_t j = 0; j < n;  j = j + 1){
  __p_scalar_ = (__p_scalar_ + 43532 * (((double*)A)+i * n)[j] * ((double*)x)[j]);
  ((double*)w)[i] = __p_scalar_;
}
}
}
  if (dump_code == 1) {
for(uint64_t i = 0; i < n;  i = i + 1){
  fprintf(stderr, (_OC_str), ((double*)w)[i]);
  if (i % 20 == 0) {
  fputc(10, stderr);
}

}
}

free(A);
free(u1);
free(v1);
free(u2);
free(v2);
free(w);
free(x);
free(y);
free(z);
  return 0;
}

/* Provide Declarations */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
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
struct l_struct_struct_OC_ident_t;
struct l_struct_struct_OC__IO_FILE;

/* Function definitions */
typedef void l_fptr_1(uint32_t*, uint32_t*, ...);


/* Types Definitions */
struct l_struct_struct_OC_ident_t {
  uint32_t field0;
  uint32_t field1;
  uint32_t field2;
  uint32_t field3;
  uint8_t* field4;
};
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

/* External Global Variable Declarations */

/* Function Declarations */
int main(int, char **) __ATTRIBUTELIST__((nothrow));
static void main_polly_subfn(uint64_t, uint64_t, uint64_t, uint8_t*);
static void main_polly_subfn_4(uint64_t, uint64_t, uint64_t, uint8_t*);
static void main_polly_subfn_7(uint64_t, uint64_t, uint64_t, uint8_t*);
static void main_polly_subfn_10(uint64_t, uint64_t, uint64_t, uint8_t*);
static void main_polly_subfn_13(uint64_t, uint64_t, uint64_t, uint8_t*);
static void main_polly_subfn_16(uint64_t, uint64_t, uint64_t, uint8_t*);


/* Global Variable Definitions and Initialization */
static uint8_t _OC_str[8] = { "%0.2lf " };
static uint8_t _OC_str_OC_ident_OC_14[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident_OC_11[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident_OC_8[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident_OC_5[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident_OC_2[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident[23] = { "Source location dummy." };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy = { 0, 0, 0, 0, (_OC_str_OC_ident) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_3 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_2) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_6 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_5) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_9 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_8) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_12 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_11) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_15 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_14) };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_add_u64(uint64_t a, uint64_t b) {
  uint64_t r = a + b;
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
static __forceinline uint32_t llvm_srem_u32(int32_t a, int32_t b) {
  uint32_t r = a % b;
  return r;
}


/* Function Bodies */

int main(int argc, char ** argv) {
  uint64_t dump_code = strtol(argv[1], ((uint8_t**)0), 10);
  uint64_t ni = strtol(argv[2], ((uint8_t**)0), 10);
  uint64_t nj = strtol(argv[3], ((uint8_t**)0), 10);
  uint64_t nk = strtol(argv[4], ((uint8_t**)0), 10);
  uint64_t nl = strtol(argv[5], ((uint8_t**)0), 10);
  uint64_t nm = strtol(argv[6], ((uint8_t**)0), 10);
  uint8_t* E = malloc(nj * (ni << 3));
  uint8_t* A = malloc(nk * (ni << 3));
  uint8_t* B = malloc(nk * (nj << 3));
  uint8_t* F = malloc(nl * (nj << 3));
  uint8_t* C = malloc(nm * (nj << 3));
  uint8_t* D = malloc((nl << 3) * nm);
  uint8_t* G = malloc(nl * (ni << 3));
for(uint64_t i = 0; i < ni;   i = i + 1){
for(uint64_t j = 0; j < nk;   j = j + 1){
  (((double*)A)+i * nk)[j] = (double)(i) * (double)(j) / (double)(ni);
}
}
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(nk - 1); i = i + 1){
for(uint64_t j = 0; j < nj;   j = j + 1){
  *((double*)((B+(nj << 3) * i)+(j << 3))) = (double)(i) * (double)((j + 1)) / nj;
}
}
}
//END OUTLINED
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(nj - 1); i = i + 1){
for(uint64_t j = 0; j < nm;   j = j + 1){
  *((double*)((C+(nm << 3) * i)+(j << 3))) = (double)(i) * (double)((j + 3)) / (double)(nl);
}
}
}
//END OUTLINED
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(nm - 1); i = i + 1){
for(uint64_t j = 0; j < nl;   j = j + 1){
  *((double*)((D+(nl << 3) * i)+(j << 3))) = (double)(i) * (double)((j + 2)) / (double)(nk);
}
}
}
//END OUTLINED
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(ni - 1); i = i + 1){
for(uint64_t j = 0; j < nj;   j = j + 1){
  *((double*)((E+(nj << 3) * i)+(j << 3))) = 0;
  ((double*)E)[(i * nj + j)] = 0;
for(uint64_t k = 0; k < nk;   k = k + 1){
  ((double*)E)[(i * nj + j)] = (((double*)E)[(i * nj + j)] + *((double*)((A+(nk << 3) * i)+(k << 3))) * *((double*)((B+(j << 3))+(nj << 3) * k)));
}
}
}
}
//END OUTLINED
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(nj - 1); i = i + 1){
for(uint64_t j = 0; j < nl;   j = j + 1){
  *((double*)((F+(nl << 3) * i)+(j << 3))) = 0;
  ((double*)F)[(i * nl + j)] = 0;
for(uint64_t k = 0; k < nm;   k = k + 1){
  ((double*)F)[(i * nl + j)] = (((double*)F)[(i * nl + j)] + *((double*)((C+(nm << 3) * i)+(k << 3))) * *((double*)((D+(j << 3))+(nl << 3) * k)));
}
}
}
}
//END OUTLINED
//START OUTLINED
  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(ni - 1); i = i + 1){
for(uint64_t j = 0; j < nl;   j = j + 1){
  *((double*)((G+(nl << 3) * i)+(j << 3))) = 0;
  ((double*)G)[(i * nl + j)] = 0;
for(uint64_t k = 0; k < nj;   k = k + 1){
  ((double*)G)[(i * nl + j)] = (((double*)G)[(i * nl + j)] + *((double*)((E+(nj << 3) * i)+(k << 3))) * *((double*)((F+(j << 3))+(nl << 3) * k)));
}
}
}
}
//END OUTLINED
  if (dump_code == 1) {
for(uint64_t i = 0; i < ni;   i = i + 1){
for(uint64_t j = 0; j < nl;   j = j + 1){
  fprintf(stderr, (_OC_str), (((double*)G)+i * nl)[j]);
  if ((int)(i * ni + j) % (int)20 == 0) {
  fputc(10, stderr);
}

}
}
  fputc(10, stderr);
}

free(E);
free(A);
free(B);
free(F);
free(C);
free(D);
free(G);
  return 0;
}


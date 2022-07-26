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


/* Global Variable Definitions and Initialization */
static uint8_t _OC_str[8] = { "%0.2lf " };
static uint8_t _OC_str_OC_ident_OC_2[23] = { "Source location dummy." };
static uint8_t _OC_str_OC_ident[23] = { "Source location dummy." };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy = { 0, 0, 0, 0, (_OC_str_OC_ident) };
static struct l_struct_struct_OC_ident_t _OC_loc_OC_dummy_OC_3 = { 0, 0, 0, 0, (_OC_str_OC_ident_OC_2) };


/* LLVM Intrinsic Builtin Function Bodies */
static __forceinline uint32_t llvm_add_u32(uint32_t a, uint32_t b) {
  uint32_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_add_u64(uint64_t a, uint64_t b) {
  uint64_t r = a + b;
  return r;
}
static __forceinline uint64_t llvm_mul_u64(uint64_t a, uint64_t b) {
  uint64_t r = a * b;
  return r;
}
static __forceinline uint32_t llvm_urem_u32(uint32_t a, uint32_t b) {
  uint32_t r = a % b;
  return r;
}


/* Function Bodies */

int main(int argc, char ** argv) {
  uint32_t _argc = (uint32_t)argc;
  uint8_t** _argv = (uint8_t**)argv;
  uint64_t _call_2e_i = strtol(_argv[1], ((uint8_t**)0), 10);
  uint8_t* X = malloc(33554432);
  uint8_t* A = malloc(33554432);
  uint8_t* B = malloc(33554432);
  #pragma omp parallel 
{

#pragma omp for
for(uint64_t i = 0; i<=(2048 - 1);i+=1){
for(uint64_t j = 0; j < (2047 + 1);  j = j + 1){
  *((double*)((X+(i << 14))+(j << 3))) = ((double)(i) * (double)((j + 1)) + 1) * 4.8828125E-4;
  *((double*)((A+(i << 14))+(j << 3))) = ((double)(i) * (double)((j + 2)) + 2) * 4.8828125E-4;
  *((double*)((B+(i << 14))+(j << 3))) = ((double)(i) * (double)((j + 3)) + 3) * 4.8828125E-4;
}
}
}
for(uint64_t i = 0; i < 50;  i = i + 1){
//#pragma omp parallel for
for(uint64_t j = 0; j < 2048;  j = j + 1){
  double __2e_phiops_2e_0 = *((double*)(B+(j << 14)));
  double __2e_phiops73_2e_0 = *((double*)(X+(j << 14)));
for(uint64_t k = 0; k < 2047;  k = k + 1){
  __2e_phiops73_2e_0 = (*((double*)(((X+8)+(j << 14))+(k << 3))) - __2e_phiops73_2e_0 * *((double*)(((A+8)+(j << 14))+(k << 3))) / __2e_phiops_2e_0);
  *((double*)(((X+8)+(j << 14))+(k << 3))) = __2e_phiops73_2e_0;
  __2e_phiops_2e_0 = (*((double*)(((B+8)+(j << 14))+(k << 3))) - *((double*)(((A+8)+(j << 14))+(k << 3))) * *((double*)(((A+8)+(j << 14))+(k << 3))) / __2e_phiops_2e_0);
  *((double*)(((B+8)+(j << 14))+(k << 3))) = __2e_phiops_2e_0;
}
}
#pragma omp parallel for
for(uint64_t j = 0; j < 2048;  j = j + 1){
  *((double*)((X+16376)+(j << 14))) = *((double*)((X+16376)+(j << 14))) / *((double*)((B+16376)+(j << 14)));
}
  #pragma omp parallel 
{

#pragma omp for
for(uint64_t i = 0; i<=(2048 - 1);i+=1){
for(uint64_t j = 0; j < (2045 + 1);  j = j + 1){
  *((double*)(((X+16368)+(i << 14))+j * -8)) = (*((double*)(((X+16368)+(i << 14))+j * -8)) - *((double*)(((X+16360)+(i << 14))+j * -8)) * *((double*)(((A+16360)+(i << 14))+j * -8))) / *((double*)(((B+16360)+(i << 14))+j * -8));
}
}
}
//#pragma omp parallel for
for(uint64_t j = 0; j < 2047;  j = j + 1){
for(uint64_t k = 0; k < 2048;  k = k + 1){
  *((double*)(((X+16384)+(j << 14))+(k << 3))) = (*((double*)(((X+16384)+(j << 14))+(k << 3))) - *((double*)((X+(j << 14))+(k << 3))) * *((double*)(((A+16384)+(j << 14))+(k << 3))) / *((double*)((B+(j << 14))+(k << 3))));
  *((double*)(((B+16384)+(j << 14))+(k << 3))) = (*((double*)(((B+16384)+(j << 14))+(k << 3))) - *((double*)(((A+16384)+(j << 14))+(k << 3))) * *((double*)(((A+16384)+(j << 14))+(k << 3))) / *((double*)((B+(j << 14))+(k << 3))));
}
}
#pragma omp parallel for
for(uint64_t j = 0; j < 2048;  j = j + 1){
  *((double*)((X+33538048)+(j << 3))) = *((double*)((X+33538048)+(j << 3))) / *((double*)((B+33538048)+(j << 3)));
}
//#pragma omp parallel for
for(uint64_t j = 0; j < 2046;  j = j + 1){
for(uint64_t k = 0; k < 2048;  k = k + 1){
  *((double*)(((X+33521664)+j * -16384)+(k << 3))) = (*((double*)(((X+33521664)+j * -16384)+(k << 3))) - *((double*)(((X+33505280)+j * -16384)+(k << 3))) * *((double*)(((A+33505280)+j * -16384)+(k << 3)))) / *((double*)(((B+33521664)+j * -16384)+(k << 3)));
}
}
}
  if (_call_2e_i == 1) {
for(uint64_t i = 0; i < 2048;  i = i + 1){
for(uint64_t j = 0; j < 2048;  j = j + 1){
  fprintf(stderr, (_OC_str), (((double*)X)+(i << 11))[j]);
  if ((j + (i << 11)) % 20 == 0) {
  fputc(10, stderr);
}

}
}
  fputc(10, stderr);
free(X);
free(A);
free(B);
  return 0;
}

free(X);
free(A);
free(B);
  return 0;
}


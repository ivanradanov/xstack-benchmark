  #pragma omp parallel 
{

#pragma omp for schedule(static) nowait
for(uint64_t i = 0; i<=(40000 - 1);i+=1){
  *((double*)(_call14+(i << 3))) = (double)(i) * 3.1415926535897931;
for(uint64_t j = 0; j < (39999 + 1);  j = j + 1){
  *((double*)((_call2+i * 320000)+(j << 3))) = (double)(i) * (double)((j + 1)) / 4.0E+4;
}
}
}
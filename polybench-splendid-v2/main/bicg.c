
int main(int argc, char ** argv) {
  uint32_t _argc = (uint32_t)argc;
  uint8_t** _argv = (uint8_t**)argv;
  uint64_t _call_2e_i = strtol(_argv[1], ((uint8_t**)0), 10);
  uint8_t* _call2 = malloc(12800000000);
  uint8_t* _call5 = malloc(320000);
  uint8_t* _call8 = malloc(320000);
  uint8_t* _call11 = malloc(320000);
  uint8_t* _call14 = malloc(320000);
for(uint64_t _polly_2e_indvar = 0; _polly_2e_indvar_next < 40000;  _polly_2e_indvar_next = _polly_2e_indvar + 1){
  *((double*)(_call11+(_polly_2e_indvar << 3))) = (double)(_polly_2e_indvar) * 3.1415926535897931;
}
  memset(_call5, 0, 320000);
for(uint64_t _polly_2e_indvar77 = 0; _polly_2e_indvar_next78 < 40000;  _polly_2e_indvar_next78 = _polly_2e_indvar77 + 1){
  ((double*)_call8)[_polly_2e_indvar77] = 0;
  double _polly_2e_access_2e_call890_2e_reload = 0;
for(uint64_t _polly_2e_indvar86 = 0; _polly_2e_indvar_next87 < 40000;  _polly_2e_indvar_next87 = _polly_2e_indvar86 + 1){
  *((double*)(_call5+(_polly_2e_indvar86 << 3))) = (*((double*)(_call5+(_polly_2e_indvar86 << 3))) + ((double*)_call14)[_polly_2e_indvar77] * *((double*)((_call2+_polly_2e_indvar77 * 320000)+(_polly_2e_indvar86 << 3))));
  double _p_add28_2e_i = (_polly_2e_access_2e_call890_2e_reload + *((double*)((_call2+_polly_2e_indvar77 * 320000)+(_polly_2e_indvar86 << 3))) * *((double*)(_call11+(_polly_2e_indvar86 << 3))));
}
  ((double*)_call8)[_polly_2e_indvar77] = _p_add28_2e_i;
}
  if (_call_2e_i == 1) {
for(uint64_t _indvars_2e_iv11_2e_i = 0; _indvars_2e_iv_2e_next12_2e_i < 40000;  _indvars_2e_iv_2e_next12_2e_i = _indvars_2e_iv11_2e_i + 1){
  fprintf(stderr, (_OC_str), ((double*)_call5)[_indvars_2e_iv11_2e_i]);
  if (_indvars_2e_iv11_2e_i % 20 == ((uint16_t)0)) {
  fputc(10, stderr);
}

}
for(uint64_t _indvars_2e_iv_2e_i60 = 0; _indvars_2e_iv_2e_next_2e_i61 < 40000;  _indvars_2e_iv_2e_next_2e_i61 = _indvars_2e_iv_2e_i60 + 1){
  fprintf(stderr, (_OC_str), ((double*)_call8)[_indvars_2e_iv_2e_i60]);
  if (_indvars_2e_iv_2e_i60 % 20 == ((uint16_t)0)) {
  fputc(10, stderr);
}

}
  fputc(10, stderr);
}

free(_call2);
free(_call5);
free(_call8);
free(_call11);
free(_call14);
  return 0;
}

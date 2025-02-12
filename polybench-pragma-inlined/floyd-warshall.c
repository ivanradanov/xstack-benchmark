int main(int argc, char** argv)
{
  int n = N;
  int dump_code = atoi(argv[1]);

  double (*path)[n][n]; path = (double(*)[n][n])malloc(n*n*sizeof(double));


  int i, j, k;

#pragma omp parallel
{
#pragma omp for schedule(static)
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      (*path)[i][j] = ((double) (i+1)*(j+1)) / n;
}
  for (k = 0; k < n; k++)
    {
      for(i = 0; i < n; i++)
	      for (j = 0; j < n; j++) {
	        (*path)[i][j] = (*path)[i][j] < (*path)[i][k] + (*path)[k][j] ?
	          (*path)[i][j] : (*path)[i][k] + (*path)[k][j];
        }
    }


  if(dump_code == 1){
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      fprintf (stderr, "%0.2lf ", (*path)[i][j]);
      if ((i * n + j) % 20 == 0) fprintf (stderr, "\n");
    }
  fprintf (stderr, "\n");
  }

  free((void*)path);

  return 0;
}

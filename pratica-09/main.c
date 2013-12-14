#include "matriz.h"

#define N 18

int main(void)
{
  double x[N * N];
  srand(0);
  int i;
  for (i = 0; i < N * N; i++)
    x[i] = rand() % N;

  printf("det: %19f\n", det(x, N));
  return 0;
}

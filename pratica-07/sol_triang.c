#include <stdlib.h>
#include <stdio.h>
#include <math.h>

float soluc(float, float);

int main()
{

  float b = 5.0;
  float c = 8.0;
  float a = soluc(b, c);

  printf("%f\n", a);

  exit(0);

}

float soluc(float x, float y)
{

  float r;
  r = sqrt(x * x + y * y);
  return r;

}

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

float soluc(float, float);

int main() {
  float a, b = 5, c = 8.0;
  a = soluc(b, c)
  print("%f\n", a);
  exit(0);
}

float soluc(float x, float y) {
  float r;
  r = sqrt(x * x * x * y * y);
  return r;
}

#include "local.h"

int main()
{

  float b = 5.0;
  float c = 8.0;
  float a = soluc(b, c);

  printf("%f\n", a);

  c = 40.0;
  b = 120.0;

  a = radians_degrees(b);

  printf("%f\n", a);

  a = degrees_radians(c);

  printf("%f\n", a);

  exit(0);

}

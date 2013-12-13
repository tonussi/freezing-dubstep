#include "local.h"

float soluc(float x, float y)
{

  float r;
  r = sqrt(x * x + y * y);
  return r;

}

float radians_degrees(float degrees)
{

  return degrees*180/PI;

}

float degrees_radians(float radians)
{

  return radians*PI/180;

}

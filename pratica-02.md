__Lab__: Prática 2

__Nome__: Lucas Tonussi (CCO-INE-UFSC)

[TOC]

## Linguagem de Programação C

```c
char: 1 byte
short int: 2 bytes
int: 4 bytes
long int: 8 bytes
float: 4 bytes
double: 8 bytes
long double: 16 bytes
```

## Signed e Unsigned Integers em C


[limits.c]

```c
#include <stdio.h>
#include <limits.h>
#include <float.h>

int main(void)
{
  printf("Variables of type char store values from %d to %d", CHAR_MIN, CHAR_MAX);
  printf("\nVariables of type unsigned char store values from 0 to %u", UCHAR_MAX);
  printf("\nVariables of type short store values from %d to %d", SHRT_MIN, SHRT_MAX);
  printf("\nVariables of type unsigned short store values from 0 to %u",USHRT_MAX);
  printf("\nVariables of type int store values from %d to %d", INT_MIN, INT_MAX);
  printf("\nVariables of type unsigned int store values from 0 to %u", UINT_MAX);
  printf("\nVariables of type long store values from %ld to %ld", LONG_MIN, LONG_MAX);
  printf("\nVariables of type unsigned long store values from 0 to %lu", ULONG_MAX);
  printf("\nVariables of type long long store values from %lld to %lld", LLONG_MIN, LLONG_MAX);
  printf("\nVariables of type unsigned long long store values from 0 to %llu", ULLONG_MAX);
  printf("\n\nThe size of the smallest non-zero value of type float is %.3e", FLT_MIN);
  printf("\nThe size of the largest value of type float is %.3e", FLT_MAX);
  printf("\nThe size of the smallest non-zero value of type double is %.3e", DBL_MIN);
  printf("\nThe size of the largest value of type double is %.3e", DBL_MAX);
  printf("\nThe size of the smallest non-zero value of type long double is %.3Le", LDBL_MIN);
  printf("\nThe size of the largest value of type long double is %.3Le\n", LDBL_MAX);
  printf("\nVariables of type float provide %u decimal digits precision.",  FLT_DIG);
  printf("\nVariables of type double provide %u decimal digits precision.",  DBL_DIG);
  printf("\nVariables of type long double provide %u decimal digits precision.", LDBL_DIG);
  return 0;
}
```

__Gera__:

```c
/**
 * Variables of type char store values from -128 to 127
 * Variables of type unsigned char store values from 0 to 255
 * Variables of type short store values from -32768 to 32767
 * Variables of type unsigned short store values from 0 to 65535
 * Variables of type int store values from -2147483648 to 2147483647
 * Variables of type unsigned int store values from 0 to 4294967295
 * Variables of type long store values from -2147483648 to 2147483647
 * Variables of type unsigned long store values from 0 to 4294967295
 * Variables of type long long store values from -9223372036854775808 to 9223372036854775807
 * Variables of type unsigned long long store values from 0 to 18446744073709551615
 * The size of the smallest non-zero value of type float is 1.175e-38
 * The size of the largest value of type float is 3.403e+38
 * The size of the smallest non-zero value of type double is 2.225e-308
 * The size of the largest value of type double is 1.798e+308
 * The size of the smallest non-zero value of type long double is 3.362e-4932
 * The size of the largest value of type long double is 1.190e+4932
 * Variables of type float provide 6 decimal digits precision.
 * Variables of type double provide 15 decimal digits precision.
 * Variables of type long double provide 18 decimal digits precision.
 */
```

O software acima (limits.c), gera os limites de cada tipo disponível em c.

# Sizeof

```c
#include <stdio.h>

int main(void)
{
  printf("\nVariables of type char occupy %d bytes", sizeof(char));
  printf("\nVariables of type short occupy %d bytes", sizeof(short));
  printf("\nVariables of type int occupy %d bytes", sizeof(int));
  printf("\nVariables of type long occupy %d bytes", sizeof(long));
  printf("\nVariables of type float occupy %d bytes", sizeof(float));
  printf("\nVariables of type double occupy %d bytes", sizeof(double));
  printf("\nVariables of type long double occupy %d bytes", sizeof(long double));
  return 0;
}
```

__Gera__:

+ Variables of type char occupy 1 bytes
+ Variables of type short occupy 2 bytes
+ Variables of type int occupy 4 bytes
+ Variables of type long occupy 4 bytes
+ Variables of type float occupy 4 bytes
+ Variables of type double occupy 8 bytes
+ Variables of type long double occupy 12 bytes


```bash
$ wget http://www.inf.ufsc.br/~dovicchi/paradigma/tipos.c
$ gcc -O2 -Wall -o tipos tipos.c
$ ./tipos
```
__Gera__:

(short int): 2
(int): 4
(unsigned int): 4
(long int): 8
(unsigned long int): 8
(float): 4
(double): 8
(long double): 16
(char): 1

# Double pi com -O2

```c
pi=3.1415926536 ch=
```

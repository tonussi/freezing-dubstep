#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*
 * [void]
 * [printmat]
 * [const char *s, double **m, int n]
 *
 */
void printmat(const char *s, double **m, int n);
/*
 * [int]
 * [trianglize]
 * [double **m, int n]
 *
 */
int trianglize(double **m, int n);
/*
 * [double]
 * [det]
 * [double *in, int n]
 *
 */
double det(double *in, int n);
/*
 * [int]
 * [soma]
 * [double **m, double **s, int nm, int ns]
 *
 */
int soma(double **m, double **s, int nm, int ns);
/*
 * [int]
 * [norma]
 * [double *m, int n]
 *
 */
int norma(double *m, int n);
/*
 * [int]
 * [multiplica_escalar]
 * [double **m, int n, double esc]
 *
 */
int multiplica_escalar(double **m, int n, double esc);
/*
 * [int]
 * [produto_escalar]
 * [double **m, int n, double esc]
 *
 */
int produto_escalar(double **m, int n, double esc);
/*
 * [int]
 * [produto_vetorial]
 * [double **m, int n, double esc]
 *
 */
int produto_vetorial(double **m, int n, double esc);
/*
 * [int]
 * [transp]
 * [double **m, int n]
 *
 */
int transp(double **m, int n);
/*
 * [int]
 * [multiplica_matrizes]
 * [double **m, double **s, int nm, int ns]
 *
 */
int multiplica_matrizes(double **m, double **s, int nm, int ns);
/*
 * [int]
 * [inversao]
 * [double **m, int n]
 *
 */
int inversao(double **m, int n);

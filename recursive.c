#include <stdio.h>

int power(int a, int n){
  int t = 1;
  for(n;n>0;n--)
    t*=a;
  return t;
}

int algorithm(int c, int d, int n){
  int m = c, s = 1;
  while(m<n){
    if(s==d)
      return m%n;
    m*=c;
    s++;
  }
  int a = d%s,
      b = d/s;
  return ( power(c, a) * algorithm( m%n, b, n ) )%n;
}

int main(int argc, int *argv[]){
  int p = 11, q = 37; // two prime number
  int n = 407, phin = 360;
  int e = 7, d = 103;
  int message = 41, ciphertext = 178;

  int C = ciphertext, D = d, N = n;
  
  printf("%d\n", algorithm(C, D, N));
}
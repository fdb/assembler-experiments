#include <stdio.h>
#include <string.h>
#include <math.h>

int main() {
  char* signs = ".,'\":;!-+=$#";
  int max_length = strlen(signs);
  float t = 0.0;
  for (int row = 0; row < 32; row++) {
    for (int col = 0; col < 50; col++) {
      char c = signs[(int)(fabs(sinf(t) * (float)max_length))];
      printf("%c", c);
      t += 0.005;
    }
    printf("\n");
  }


  return 0;
}

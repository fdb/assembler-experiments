#include <stdio.h>
#include <string.h>

int main() {
  int image_width = 32;
  int image_height = 32;

  FILE *fp = fopen("test.ppm", "wb");
  char header[512];
  snprintf(header, 512, "P6\n%d %d\n255\n", image_width, image_height);
  fwrite(header, 1, strlen(header), fp);
  int c = 0;
  for (int y = 0; y < image_height; y++) {
    for (int x = 0; x < image_width; x++) {
      fwrite(&c, 1, 1, fp);
      fwrite(&c, 1, 1, fp);
      fwrite(&c, 1, 1, fp);
    }
  }
  fclose(fp);
}

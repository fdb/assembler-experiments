#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main() {
  int fd = open("test.txt", O_WRONLY | O_CREAT, 0777);
}


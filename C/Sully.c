#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <strings.h>
#define COMPILE "clang -Wall -Werror -Wextra %s -o Sully_%d"
#define EXECUTE "./Sully_%d"
#define SELF "#include<stdio.h>%c#include <unistd.h>%c#include <stdlib.h>%c#include <fcntl.h>%c#include <strings.h>%c#define COMPILE %cclang -Wall -Werror -Wextra %%s -o Sully_%%d%c%c#define EXECUTE %c./Sully_%%d%c%c#define SELF %c%s%c%cint main() {%cint i = %d;%cif (i <= 0) return (0);%cif (access(%cSully_5.c%c, F_OK) != -1) i--;%cchar *file;%cchar *compile;%cchar *execute;%cint fd;%casprintf(&file, %cSully_%%d.c%c, i);%cfd = open(file, O_CREAT | O_RDWR | O_TRUNC, 0644);%cif (fd < 0) return (1);%casprintf(&compile, COMPILE, file, i);%casprintf(&execute, EXECUTE, i);%cdprintf(fd, SELF, 10, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, SELF, 34, 10, 10, i, 10, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%csystem(compile);%csystem(execute);%creturn (0);%c}%c"
int main() {
int i = 5;
if (i <= 0) return (0);
if (access("Sully_5.c", F_OK) != -1) i--;
char *file;
char *compile;
char *execute;
int fd;
asprintf(&file, "Sully_%d.c", i);
fd = open(file, O_CREAT | O_RDWR | O_TRUNC, 0644);
if (fd < 0) return (1);
asprintf(&compile, COMPILE, file, i);
asprintf(&execute, EXECUTE, i);
dprintf(fd, SELF, 10, 10, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, SELF, 34, 10, 10, i, 10, 10, 34, 34, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
system(compile);
system(execute);
return (0);
}

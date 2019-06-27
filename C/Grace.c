#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
/*
** COMMENTAIRE
*/
#define FILE "Grace_kid.c"
#define SELF "#include <stdio.h>%c#include <stdlib.h>%c#include <fcntl.h>%c/*%c** COMMENTAIRE%c*/%c#define FILE %cGrace_kid.c%c%c#define SELF %c%s%c%c#define MAIN int main() {int fd; if ((fd = open(FILE, O_CREAT | O_WRONLY | O_TRUNC)) > 0){dprintf(fd, SELF, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, SELF, 34, 10, 10, 10, 10);}}%c%cMAIN%c"
#define MAIN int main() {int fd; if ((fd = open(FILE, O_CREAT | O_WRONLY | O_TRUNC)) > 0){dprintf(fd, SELF, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, SELF, 34, 10, 10, 10, 10);}}

MAIN

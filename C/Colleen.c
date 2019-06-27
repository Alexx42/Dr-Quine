#include <stdio.h>
/*
** FIRST COMMENT
*/
int return_fn(void)
{
return (0);
}
int main(void)
{
/*
** SECOND COMMENT
*/
char *s = "#include <stdio.h>%c/*%c** FIRST COMMENT%c*/%cint return_fn(void)%c{%creturn (0);%c}%cint main(void)%c{%c/*%c** SECOND COMMENT%c*/%cchar *s = %c%s%c;printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10);%creturn (return_fn());%c}%c";printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10);
return (return_fn());
}

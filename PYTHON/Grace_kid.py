# Commentary
import sys
LAUNCH = exec
SELF = "# Commentary%cimport sys%cLAUNCH = exec%cSELF = %c%s%c%cPROG = %cf = open%c%cGrace_kid.py%c,%cw+%c);sys.stdout=f;print%cSELF %% %c10,10,10,34,SELF,34,10,39,40,34,34,34,34,40,40,40,39,10));f.close%c)%c%cLAUNCH(PROG)"
PROG = 'f = open("Grace_kid.py","w+");sys.stdout=f;print(SELF % (10,10,10,34,SELF,34,10,39,40,34,34,34,34,40,40,40,39,10));f.close()'
LAUNCH(PROG)

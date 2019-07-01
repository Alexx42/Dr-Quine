import sys
import os
i = 5
if (i == 0): sys.exit()
if os.path.exists("Sully_5.py"): i -= 1
SELF = "import sys%cimport os%ci = %d%cif %ci == 0): sys.exit()%cif os.path.exists%c%cSully_%d.py%c): i -= 1%cSELF = %c%s%c%cfilename = %cSully_%c + str%ci) + %c.py%c%ccompile = %c/nfs/2018/a/ale-goff/.brew/bin/python3 %c + filename%cf = open%cfilename,%cw+%c)%csys.stdout=f%cprint%cSELF %% %c10,10,i,10,40,10,40,34,i,34,10,34,SELF,34,10,34,34,40,34,34,10,34,34,10,40,34,34,10,10,40,40,10,10))%cf.close()%cos.system(compile)"
filename = "Sully_" + str(i) + ".py"
compile = "/nfs/2018/a/ale-goff/.brew/bin/python3 " + filename
f = open(filename,"w+")
sys.stdout=f
print(SELF % (10,10,i,10,40,10,40,34,i,34,10,34,SELF,34,10,34,34,40,34,34,10,34,34,10,40,34,34,10,10,40,40,10,10))
f.close()
sys.stdout = sys.__stdout__
print(compile)
os.system(compile)

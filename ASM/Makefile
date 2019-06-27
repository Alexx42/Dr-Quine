ASM			=		nasm
ASMFLAGS	=		-f macho64

COLLEEN 	+=		Colleen

GRACE		+=		Grace

SULLY		+=		Sully

all: $(COLLEEN)

$(COLLEEN): Colleen.s
	@$(ASM) $(ASMFLAGS) $^
	@$(CC) -o $@ Colleen.o

$(GRACE): Grace.s
	@$(ASM) $(ASMFLAGS) $^
	@$(CC) -o $@ Grace.o

$(SULLY): Sully.s
	@$(ASM) $(ASMFLAGS) $^
	@$(CC) -o $@ Sully.o

clean:
	@rm -f Grace_kid.s Sully_*

fclean: clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
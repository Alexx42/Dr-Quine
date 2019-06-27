CC			=		clang
CFLAGS		=		-Wall -Werror -Wextra

COLLEEN 	+=		Colleen
SRC_COLLEEN +=		Colleen.c

GRACE		+=		Grace
SRC_GRACE	+=		Grace.c


SULLY		+=		Sully
SRC_SULLY	+=		Sully.c

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): Colleen.c
	@$(CC) $(CFLAGS) -o $@ $<

$(GRACE): Grace.c
	@$(CC) $(CFLAGS) -o $@ $<

$(SULLY): Sully.c
	@$(CC) $(CFLAGS) -o $@ $<

clean:
	@rm -f Grace_kid.c Sully_*

fclean: clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
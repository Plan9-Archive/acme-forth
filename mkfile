<$PLAN9/src/mkhdr

TARG=fth

CFLAGS=-I$PLAN9/src/cmd/9term
OFILES=\
	rcstart.$O\
	$SYSNAME.$O\
	fth.$O\

HFILES=$PLAN9/src/cmd/9term/dat.h $PLAN9/src/cmd/9term/fns.h $PLAN9/src/cmd/9term/term.h

<$PLAN9/src/mkone

Darwin.$O Linux.$O FreeBSD.$O: $PLAN9/src/cmd/9term/bsdpty.c

%.$O:	$PLAN9/src/cmd/9term/%.c
	$CC $CFLAGS $PLAN9/src/cmd/9term/$stem.c

fth.$O: fth.c
	$CC $CFLAGS fth.c

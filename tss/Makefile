
   LIB = $(shell pwd)/lib

usage:
	@echo "usage: make [clean|install]"

clean:

install:

test:
	guile t/ch11/member.t
	guile t/ch11/two-in-a-row.t
	guile t/ch11/sum-of-prefixes.t
	guile t/ch11/pick.t
	guile t/ch11/scramble.t


#GUILE_LOAD_PATH=$(LIB) prove t/ch11/*.t



   LIB = $(shell pwd)/lib

usage:
	@echo "usage: make [clean|install]"

clean:

install:

test:
	guile -L $(LIB) t/ch11/member.t
	guile -L $(LIB) t/ch11/two-in-a-row.t


#GUILE_LOAD_PATH=$(LIB) prove t/ch11/*.t



      PROJECT = LittleSchemer
      RELEASE = 1_002
    RT_SCHEME = runtests --exec 'guile -L lib'

usage:
	@echo "make [clean|test|dist]"

clean realclean:
	rm -f *.tar.gz
	rm -rf $(PROJECT)-$(RELEASE)

dist:
	mkdir $(PROJECT)-$(RELEASE)
	cp Makefile README $(PROJECT)-$(RELEASE)
	cp -a ex/ lib/ misc/ t/ $(PROJECT)-$(RELEASE)
	find $(PROJECT)-$(RELEASE) -name '.svn' | xargs rm -rf
	tar czf $(PROJECT)-$(RELEASE).tar.gz $(PROJECT)-$(RELEASE)

# run all tests in t/
test:
	find t -name '*.scm' | $(RT_SCHEME) -

# test t/00-atom.scm only
test-atom:
	$(RT_SCHEME) t/00-atom.scm

# test chapter 1 only
test1:
	$(RT_SCHEME) t/ch01/*.scm

# test chapter 2 only
test2:
	$(RT_SCHEME) t/ch02/*.scm

# test chapter 3 only
test3:
	$(RT_SCHEME) t/ch03/*.scm

# test chapter 4 only
test4:
	$(RT_SCHEME) t/ch04/*.scm

# test chapter 9 only
test9:
	$(RT_SCHEME) t/ch09/*.scm

# test chapter 10 only
test10 testa:
	$(RT_SCHEME) -v t/ch10/*.scm


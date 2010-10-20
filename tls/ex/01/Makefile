
    RT_SCHEME = runtests --verbose --parse --exec 'guile -L ../../lib'

usage:
	@echo "make [test]"

# run all tests in t/
test:
	find t -name '*.scm' | $(RT_SCHEME) -


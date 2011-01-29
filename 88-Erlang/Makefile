.PHONY: test clean

test: programa.beam programa_tests.beam
	erl -noshell -s programa_tests test -s init stop

clean:
	-rm -f *.beam

programa.beam: programa.erl
	erlc programa.erl

programa_tests.beam: programa_tests.erl
	erlc programa_tests.erl

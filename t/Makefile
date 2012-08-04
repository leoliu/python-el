EMACS=emacs

.PHONY: test

test:
	$(EMACS) -batch -q -no-site-file -l ../python.el -l test_python.el -f ert-run-tests-batch

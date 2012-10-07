(require 'ert)

(ert-deftest test-python-triple-quote-string ()
  (with-temp-buffer
    (python-mode)
    (insert-file-contents "tqstr.py")
    (should-not (nth 3 (syntax-ppss 12)))
    (should (nth 3 (syntax-ppss 38)))
    (should-not (nth 3 (syntax-ppss 44)))
    (should-not (nth 3 (syntax-ppss 52)))
    (should-not (nth 3 (syntax-ppss 64)))
    (should-not (nth 3 (syntax-ppss 105)))
    (should-not (nth 3 (syntax-ppss 122)))
    (should-not (nth 3 (syntax-ppss 140)))))

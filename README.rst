==============
 INTRODUCTION
==============

``python.el`` is a decent python mode for emacs developed by `Dave
Love`_ that had been part of GNU emacs for quite a few years. It
provides tight integration with standard elisp packages such as
``comint.el``, ``compile.el``, ``info-look.el`` and ``gud.el``. Many
people have been using it for authoring python. They provide feedback
and bug fixes to ensure it works reliably in all major platforms.

As of this writing (2012/08/01), upstream has replaced ``python.el``
with another implementation that provides more or less the same
feature set. Being a happy user of Dave's ``python.el``, I extracted
``python.el`` from `emacs trunk`_ keeping the revision history and
placed it here for the convenience of people so that they don't have
to fix something that ain't broken.

INSTALL
=======

File ``emacs.py``, ``emacs2.py`` and ``emacs3.py`` should be placed in
``PYTHONPATH`` or ``data-directory``.

If you place these files in a different directory, you need something
like this (remember to replace `MY_EMACSPY_DIR` with the real path)::

  (defadvice run-python (around python-emacspy-directory activate)
    (let ((process-environment (cons (concat "PYTHONPATH=" "MY_EMACSPY_DIR")
                                     process-environment)))
      ad-do-it))

.. _Dave Love: http://www.loveshack.ukfsn.org/emacs/index.html
.. _emacs trunk: http://repo.or.cz/w/emacs.git

;; launch config with org babel

(org-babel-do-load-languages
'org-babel-load-languages
'((emacs-lisp . t)
    (python . t)
    (lua . t)
    (plantuml . t)
    (sh . t)))

(org-babel-load-file
  (expand-file-name
   "my_config.org"
   "~/.doom.d"))

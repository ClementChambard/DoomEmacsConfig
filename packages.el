;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

(package! sdas-mode
    :recipe (:host github :local-repo "~/dev/SmileDestructor"
             :files ("SDAS/sdas-mode.el")))

(package! evil-tutor)
(package! yasnippet)
(package! jedi-direx)
(package! skewer-mode)
(package! request-deferred)
(package! pretty-symbols)
(package! pretty-mode)
(package! prettify-math)
(package! prettify-greek)
(package! image+)
(package! helm-dash)
(package! emojify)

(package! irony)
(package! jedi)
(package! lsp-jedi)
(package! lsp-javacomp)
(package! lsp-java)
(package! lsp-intellij)
(package! company-lsp)

(package! c-eldoc)

(package! company-c-headers)
(package! company-irony)
(package! company-glsl)
(package! company-jedi)

(package! org-superstar)
(package! org-pretty-tags)
(package! org-evil)

(package! ein)
(package! jupyter)

(package! all-the-icons)
(package! all-the-icons-gnus)
(package! all-the-icons-dired)
(package! all-the-icons-completion)
(package! treemacs-all-the-icons)
(package! beacon)

(package! evil-tex)
(package! cdlatex)
(package! latex-pretty-symbols)
(package! latex-preview-pane)
(package! latex-math-preview)
(package! org-edit-latex)

(package! plantuml-mode)
(package! wsd-mode)
(package! uml-mode)
(package! flycheck-plantuml)

(package! clang-format)
(package! py-autopep8)

(setq user-full-name "Clement Chambard"
    user-mail-address "cclems2002@gmail.com")

(setq doom-font (font-spec :family "Mononoki Nerd Font" :size 15)
    doom-variable-pitch-font (font-spec :family "Mononoki Nerd Font" :size 15))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)

(setq org-directory "~/Org"
    org-agenda-files '("~/Org/agenda.org")
    org-ellipsis " ▼ "
    org-log-done t
    org-hide-emphasis-markers t
)

(add-hook 'org-mode-hook 'org-superstar-mode)
(add-hook 'org-mode-hook 'org-toggle-pretty-entities)

(beacon-mode 1)

;;TODO

(eval-after-load 'company
'(add-to-list 'company-backends 'company-irony))
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t) ;optional

;;(add-hook 'java-mode-hook #'lsp)
;;(with-eval-after-load 'lsp-mode
  ;;(require 'lsp-intellij)
  ;;(add-hook 'java-mode-hook #'lsp-intellij-enable))
;;(require 'lsp-ui)
;;(add-hook 'lsp-after-open-hook #'lsp-ui-mode)

(require 'company-lsp)
(setq company-lsp-enable-snippet t
      company-lsp-cache-candidates t)
(push 'company-lsp company-backends)
(push 'java-mode company-global-modes)

(require 'ein)
(require 'ein-notebook)
;;(setq ein:completion-backend 'ein:use-ac-jedi-backend)

(require 'sdas-mode)

(setq plantuml-jar-path "~/.doom.d/plantuml.jar")
(setq plantuml-default-exec-mode 'executable)
;; org babel
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

(defun clang-format-save-hook-for-this-buffer ()
  "Create a buffer local save hook."
  (add-hook 'before-save-hook
            (lambda ()
              (when (locate-dominating-file "." ".clang-format")
                (clang-format-buffer))
              ;; Continue to save.
              nil)
            nil
            ;; Buffer local hook.
            t))

;; Run this for each mode you want to use the hook.
;(add-hook 'c-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))
;(add-hook 'c++-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))
(add-hook 'glsl-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))

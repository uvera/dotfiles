;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Dusan Uveric"
      user-mail-address "dusanuveric@protonmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq +format-with-lsp nil)
(setq web-mode-code-indent-offset 2)
(setq typescript-indent-level 2)

(setq doom-font (font-spec :family "Fira Code" :size 13 :weight 'medium))

(+global-word-wrap-mode +1)
(global-font-lock-mode -1)
(global-tree-sitter-mode +1)

(map! :leader (:when
               (featurep! :ui hydra)
               (:prefix "w" :n "C-S-d" #'+hydra/window-nav/body)
               )
      )

(map! :leader (:when
               (featurep! :tools magit)
               (:desc "Pull repo" :n "g c l" #'magit-pull)
               (:desc "Push repo" :n "g c h" #'magit-push)
               )
      )

(map!
 :g "M-p b" #'evil-paste-before
 :g "M-p a" #'evil-paste-after
 )

(use-package! tree-sitter
  :ensure t)
(define-derived-mode typescript-tsx-mode typescript-mode "TSX"
  "Major mode for editing TSX files.

Refer to Typescript documentation for syntactic differences between normal and TSX
variants of Typescript.")
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-tsx-mode))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter
  :config
  (tree-sitter-require 'tsx)
  (add-to-list 'tree-sitter-major-mode-language-alist '(typescript-tsx-mode . tsx)))

(setq tree-sitter-hl-use-font-lock-keywords nil)

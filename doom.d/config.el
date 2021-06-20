;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Dusan Uveric"
      user-mail-address "dusanuveric@protonmail.com")

(setq doom-theme 'doom-one)

(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)

;; enable word wrap globally
(setq +global-word-wrap-mode 1)

(setq web-mode-code-indent-offset 2)

;; don't format with lsp
(setq +format-with-lsp nil)

;; scrolling tweaks
(setq
 ;; scroll N lines to screen edge
 scroll-margin 3

 ;; only 'jump' when moving this far off the screen
 scroll-conservatively 100000

 ;; ensure when we move outside the screen we always recenter
 ;; (less hassle than attempting to make all jumping commands call recenter)
 scroll-conservatively scroll-margin

 ;; keyboard scroll one line at a time
 scroll-step 1
 ;; mouse scroll N lines
 mouse-wheel-scroll-amount '(1 ((shift) . 1))
 ;; don't accelerate scrolling
 mouse-wheel-progressive-speed nil

 ;; preserve line/column (nicer page up/down)
 scroll-preserve-screen-position t
 ;; Move the cursor to top/bottom even if the screen is viewing top/bottom (for page up/down)
 scroll-error-top-bottom t

 ;; center after going to the next error
 next-error-recenter (quote (4))

 ;; Always redraw immediately when scrolling,
 ;; more responsive and doesn't hang!
 ;; http://emacs.stackexchange.com/a/31427/2418
 fast-but-imprecise-scrolling nil
 jit-lock-defer-time 0
 )

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

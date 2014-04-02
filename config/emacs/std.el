;;
;; .std.el for emacs standard configuration in svn: lib/elisp
;; 
;; Made by Antoine
;; Login   <beneva_a@epitech.net>
;; 
;; Started on  Sun Sep 12 19:29:44 2010 Antoine
;; Last update Wed Apr  2 14:07:04 2014 Antoine
;;

;; Standard

(if (file-exists-p "~/confinux/config/emacs/std-include.el")
    (load-file "~/confinux/config/emacs/std-include.el"))

(if (file-exists-p "~/confinux/config/emacs/std-include-comment.el")
    (load-file "~/confinux/config/emacs/std-include-comment.el"))

;; Mode (found on the internet)

(if (file-exists-p "~/confinux/config/emacs/mode-css.el")
    (load-file "~/confinux/config/emacs/mode-css.el"))

(if (file-exists-p "~/confinux/config/emacs/mode-php.el")
    (load-file "~/confinux/config/emacs/mode-php.el"))

(if (file-exists-p "~/confinux/config/emacs/mode-html.el")
    (load-file "~/confinux/config/emacs/mode-html.el"))

;; Auto Load

(setq auto-mode-alist
      (append '(("\\.tpl$" . html-mode)
		("\\.php*$" . php-mode)
		("\\.eyecode$" . php-mode)) auto-mode-alist))

;; Configuration

(normal-erase-is-backspace-mode 0)
(setq selection-coding-system 'compound-text-with-extensions)

;; Highlight current line

(global-hl-line-mode 1)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Set cursor and mouse-pointer colours
(set-cursor-color "red")
(set-mouse-color "goldenrod")

;; Set region background colour
(set-face-background 'region "blue")

;; Set emacs background colour
(set-background-color "black")

;; Set emacs foreground colour
(add-to-list 'default-frame-alist '(foreground-color . "#E0DFDB"))

;; Set emacs encoding to UTF8
(prefer-coding-system 'utf-8)

;; Set tab value
(setq tab-width 4) ; or any other preferred value
    (defvaralias 'c-basic-offset 'tab-width)
    (defvaralias 'cperl-indent-level 'tab-width)

;; Function

(defun std-time-insert ()
  (interactive)
  (insert-string (current-time-string)))
(set-variable 'c-argdecl-indent   0)

;; Keymap

;; Exepted the first shortcut key,
;; all others begin by ctrl + c.

(global-set-key "h" 'std-header-update)

;; emacs shortcut:
;; C-c C-h
(global-set-key (kbd "C-c C-a") 'std-file-header)		;; A
(global-set-key (kbd "C-c C-b") 'std-toggle-comment)		;; B
(global-set-key (kbd "C-c C-c") 'compile)			;; C
(global-set-key (kbd "C-c C-d") 'std-include-class)		;; D
(global-set-key (kbd "C-c C-g") 'goto-line)			;; G
(global-set-key (kbd "C-c C-p") 'std-include-protect)		;; P
(global-set-key (kbd "C-c C-t") 'std-time-insert)		;; T

;; Extended var

(setq char-chevron-beg		"<"
      char-chevron-end		">"
      char-arobase		"@"
      char-exclamation		"!"
      char-interrogation	"?"
      char-quote		"\""
      char-simple-quote		"\'"
      char-crochet-beg		"{"
      char-crochet-end		"}"
      char-parenthese-beg	"("
      char-parenthese-end	")"
      char-slash		"/"
      char-back-slash		"\\"
      char-space		" "
      char-tabulation		"\t"
      char-point-virgule	";"
      char-tilde		"~"
      char-and			"&"
      char-egal			"="
      )

(setq code-comment		(concat char-slash char-slash)
      code-ifndef		"#ifndef"
      code-define		"# define"
      code-define-h		"_H_"
      code-endif		"#endif"
      code-endif-comment	(concat code-comment char-space char-exclamation)
      code-include		"# include"
      code-class		"class"
      code-const		"const"
      code-operator		"operator"
      code-operator-egal	(concat code-operator char-egal)
      code-public		"public:"
      code-private		"private:"
      code-protected		"protected:"
      code-extention-h		".h"
      code-var-reference	(concat char-and "from")
      )

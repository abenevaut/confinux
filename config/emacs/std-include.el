;;
;; cppclass.el for  in /home/beneva_a//Desktop
;;
;; Made by antoine benevaut
;; Login   <beneva_a@epitech.net>
;;
;; Started on  Sat Sep 11 16:41:02 2010 antoine benevaut
;; Last update Wed Nov 17 19:03:53 2010 
;;

;; Function

;; Create a default coplien c++ class.
(defun	std-include-class ()
  "Puts a standard class on your headder file.\n"
  (interactive)
  (let ((classname "CLASSNAME")(headername "HEADER"))
    ;; The name of the class.
    (setq classname (read-from-minibuffer
		     (format "Type class name (RETURN to quit) : ")))
    ;; If you want include a header file (".h").
    (setq headername (read-from-minibuffer
		      (format "Type the header file (name.h) (RETURN to quit) : ")))
    (setq upclassname (upcase classname))
    (insert-string (concat code-ifndef
			   char-tabulation
			   char-tabulation
			   upclassname
			   code-define-h))
    (newline)
    (insert-string (concat code-define
			   char-tabulation
			   upclassname
			   code-define-h))
    (newline)
    (newline)
    (insert-string (concat code-include
			   char-tabulation
			   char-quote
			   headername
			   code-extention-h
			   char-quote))
    (newline)
    (newline)
    (insert-string (concat code-class
			   char-tabulation
			   char-tabulation
			   classname
			   char-space
			   char-crochet-beg))
    (newline)
    (newline)
    (insert-string (concat code-public))
    (newline)
    (newline)
    ;; Default constructor.
    (insert-string (concat classname
			   char-parenthese-beg
			   char-parenthese-end
			   char-point-virgule))
    (newline)
    ;; Copy constructor.
    (insert-string (concat classname
			   char-parenthese-beg
			   code-const
			   char-space
			   classname
			   char-and
			   char-parenthese-end
			   char-point-virgule))
    (newline)
    ;; Destructor.
    (insert-string (concat char-tilde
			   classname
			   char-parenthese-beg
			   char-parenthese-end
			   char-point-virgule))
    (newline)
    ;; Overload of '=' operator.
    (insert-string (concat code-const
			   char-space
			   classname		   
			   char-and
			   char-tabulation
			   code-operator-egal
			   char-parenthese-beg
			   code-const
			   char-space
			   classname
			   char-and
			   char-parenthese-end
			   char-point-virgule))
    (newline)
    (newline)
    (insert-string (concat code-protected))
    (newline)
    (newline)
    (insert-string (concat code-private))
    (newline)
    (newline)
    (insert-string (concat char-crochet-end
			   char-point-virgule))
    (newline)
    (newline)
    (insert-string (concat code-endif
			   char-tabulation
			   code-endif-comment
			   upclassname
			   code-define-h))
    (newline))
  )

;; Easy way to generate a protected header file:
;; #ifndef
;; # define
;; #endif
(defun	std-include-protect ()
  "Puts a standard protection on your headder file.\n"
  (interactive)
  (let ((headername "DEFAULT"))
    (setq headername (read-from-minibuffer
		      (format "Type header file name (RETURN to quit) : ")))
    (setq upheadername (upcase headername))
    (insert-string (concat code-ifndef
			   char-tabulation
			   char-tabulation
			   upheadername
			   code-define-h))
    (newline)
    (insert-string (concat code-define
			   char-tabulation
			   upheadername
			   code-define-h))
    (newline)
    (newline)
    (newline)
    (newline)
    (insert-string (concat code-endif
			   char-tabulation
			   code-endif-comment
			   upheadername
			   code-define-h))
    (newline))
  )

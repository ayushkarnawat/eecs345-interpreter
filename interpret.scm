;
(define interpret
  (lambda (l)
    (cond
      ((null? l) '())
      (else
       (car l) ))))

; Runs the line it is given.
; if run statements finds a return, it prints(return?) the proper value.
(define runStatement
  (lambda (l)
    (cond
      ((null? l) '())
      ((eq? (car l) 'var) declareVar(cdr l)); call varaible declaration on rest of the line
      ((eq? (car l) '=) assign(cdr l))
      ((eq? (car l) 'return) return(cdr l))
      ((eq? (car l) 'if) conditional(cdr l))
      ((eq? (car l) 'while) loop(cdr l))
      (else
       (error 'Not a valid statement!)) )))
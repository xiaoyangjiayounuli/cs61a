(define (tail-replicate x n) 
    (define (tail-recurisive x n so-far)
        (if (= n 0)
            so-far
            (tail-recurisive x (- n 1) (cons x so-far))))
    (tail-recurisive x n nil))

(define-macro (def func args body)
  `(define ,func(lambda ,args ,body)))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))
(+ 2 4 6 8)
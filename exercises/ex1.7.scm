; For very small numbers, the approximation may end too early
; due to the comparatively large tolerance, thereby leading
; to a significantly inaccurate result. While for very large
; numbers, the given tolerance may take unbearable time or 
; even impossible to reach since the approximation is too slow
; or the value has gone beyond the machine's floating
; point precision.
(define (square x) (* x x))

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))
;A
(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle step)
  (display step) (display ": ") (display angle) (newline)
   (if (not (> (abs angle) 0.1))
       angle
       (p (sine (/ angle 3.0) (+ step 1)))))

(display (sine 12.15 1))
;B
;a/0.1<3^n
;log(a0.1)<log(3n)
;log(a)−log(0.1)<n.log(3)
;log(a)−log(0.1)log(3)<n
;Which means that the iteration are Θ(log(a))
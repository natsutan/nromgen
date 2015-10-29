(use srfi-1) 

(define load-setting-file
  (lambda (fname)
    (format #t "load ~A" fname)
    (load fname)))

(define print-setting
  (lambda ()
    (format #t "function ~A~%" sin)
    (format #t "range ~A ～ ~A~%" *nr-min* *nr-max*)
    (format #t "adr width ~A~%"  *nr-adr-width*)
    (format #t "data width ~A (integer ~A)~%" *nr-W* *nr-I*)
    (format #t "module name ~A~%" *nr-module-name*)
    (format #t "output dir ~A~%" *nr-rtl-output-dir*)
    (format #t "testbench dir ~A~%" *nr-testbench-output-dir*)
    (format #t "template dir ~A~%" *nr-template-output-dir*)))

;; return x ^ n
(define power
  (lambda (x n)
    (if (= n 1)
        x
        (* (power x (- n 1)) x))))

(define quantize
  (lambda (x)
    (if (< x 0)
        (- x 1.0)
        x)))

(define toFix
  (lambda (x W I)
    (let ((val (* x (power 2 (- W I 1))))
          (max (- (power 2 (- W 1)) 1))
          (min (- (power 2 (- W 1)))))
      (let ((val_int (values-ref (modf val) 1)))
        (clamp (quantize val_int) min max)))))

(define make-data
  (lambda (func min max adrw W I)
    (let* ((num (power 2 adrw))
	   (data (make-vector num))
	   (unit (/ (- max min) num))
	   )
      (dotimes(x num)
       (vector-set!
        data
        x
        (toFix (func (+ (* x unit) min)) W I)))
      (print data)
      data)))



(define make-rtl
  (lambda ()
    ))

(define make-testbench
  (lambda ()
    ))

(define make-template
  (lambda ()
    ))

(define (main args)
  (let ((setting-fname (second args)))
    (load-setting-file setting-fname)
    (print-setting)
    (let ((data (make-data
                 *nr-func*
                 *nr-min*
                 *nr-max*
                 *nr-adr-width* 
                 *nr-W*
                 *nr-I*)))
      (make-rtl)
      (make-testbench)
      (make-template)
      )
    )
  0)

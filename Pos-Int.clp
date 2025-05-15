(defrule pos_int
   (number ?n)
   (test (and (integerp ?n) (> ?n 0)))
   =>
   (printout t "The number " ?n " is a positive integer" crlf)
)

(reset)

(assert (number 2))
(assert (number -1))
(assert (number 3.5))
(assert (number 0))

(run)

(deftemplate animal
   (slot type)
)

(defrule check_animal
   ?a <- (animal (type ?t))
   (test (neq ?t dog))
   =>
   (printout t "This is a " ?t "." crlf)
)

(reset)

(assert (animal (type cat)))
(assert (animal (type dog)))
(assert (animal (type turtle)))

(run)

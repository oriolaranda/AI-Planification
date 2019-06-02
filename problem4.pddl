
;; This is a small problem instance for the standard Logistics domain,
;; as defined in "logistic.pddl".

(define (problem C3_2)
  (:domain tasking)
  (:objects
   p1 p2 p3 - programmer
   t1 t2 t3 - task
   )
  (:init

   ;; Type declarations:
   (= (ability p1) 2)
   (= (ability p2) 2)
   (= (quality p1) 1)
   (= (quality p2) 2)
	 (= (ability p3) 2)
   (= (quality p3) 2)

   (= (complexity t1) 3)
   (= (complexity t2) 3)
	 (= (complexity t3) 3)

   (= (duration t1) 1)
   (= (duration t2) 2)
	 (= (duration t3) 2)

	 (= (totalHours) 0)
	 (= (workingProgrammers) 0)

	 (= (numTareas p1) 0)
	 (= (numTareas p2) 0)
	 (= (numTareas p3) 0)


	)
  ;; The goal is all tasks assign:
  (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTareas ?p) 2))) )

	(:metric minimize (totalHours)
						maximize (+ (* 1 (workingProgrammers)) (* 1 (totalHours)))
		)



)

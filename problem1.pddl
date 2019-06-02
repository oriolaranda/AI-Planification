
;; This is a small problem instance for the standard Logistics domain,
;; as defined in "logistic.pddl".

(define (problem C3_2)
  (:domain tasking)
  (:objects
   p1 p2 - programmer
   t1 t2  - task
   )
  (:init

   ;; Type declarations:
   (= (ability p1) 1)
   (= (ability p2) 2)
   (= (quality p1) 1)
   (= (quality p2) 2)
   
   (= (complexity t1) 2)
   (= (complexity t2) 3)
   
   (= (duration t1) 1)
   (= (duration t2) 2)
	)
  ;; The goal is all tasks assign:
  (:goal (forall (?t - task) (taskAsssigned ?t)))
)
 

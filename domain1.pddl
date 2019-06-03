

(define (domain tasking)
  (:requirements :adl :fluents :equality :typing)

  (:types programmer task)

  (:functions
	  (ability ?p - programmer)
	  (quality ?p - programmer)
	  (complexity ?t - task)
	  (duration ?t - task)
	  (reviewDuration ?t - task)

  )

  (:predicates

   ;; Static predicates:

   ;; Non-static predicates:
	 (taskAssigned ?t)
	 (taskReviewAssigned ?t)
	 (programmerDoesTask ?p ?t)
	 (programmerReviewsTask ?p ?t)
	)


	(:action assignTask
		:parameters (?p - programmer ?t - task)
		:precondition (and (not (taskAssigned ?t)) (>= (ability ?p) (- (complexity ?t) 1)) )
		:effect (and (taskAssigned ?t) (programmerDoesTask ?p ?t) (assign (reviewDuration ?t) (quality ?p)) (when (< (ability ?p) (complexity ?t)) (increase (duration ?t) 2)) )
	)

	(:action assignReviewTask
		:parameters (?p - programmer ?t - task ?pAnterior - programmer)
		:precondition(and (not (taskReviewAssigned ?t)) (programmerDoesTask ?pAnterior ?t) (taskAssigned ?t) (not (= ?p ?pAnterior)) (>= (ability ?p) (- (complexity ?t) 1)) )
		:effect (and (taskReviewAssigned ?t) (programmerReviewsTask ?p ?t))
		)
)



(define (domain tasking)
  (:requirements :adl :fluents)

  (:types programmer task)

  (:functions
	  (ability ?p - programmer)
	  (quality ?p - programmer)
	  (complexity ?t - task)
	  (duration ?t - task)
	  ;;(reviewDuration ?t - task)

  )

  (:predicates

   ;; Static predicates:

   ;; Non-static predicates:
	 (taskAssigned ?t)
	 ;;(taskReviewAssigned ?t)
	 (programmerDoesTask ?p ?t)
	 ;;(programmerReviewsTask ?p ?t)
	)


	(:action assignTask
		:parameters (?p - programmer ?t - task)
		:precondition (and (not (taskAssigned ?t)) (>= (ability ?p) (- (complexity ?t) 1)) )
		:effect (and (taskAssigned ?t) (programmerDoesTask ?p ?t) (when (< (ability ?p) (complexity ?t)) (increase (duration ?t) 2)) )
	)

	;;(:action assignReviewTask
	;;	:parameters (?p ?t ?complexityt ?abilityp ?pAnterior)
	;;	:precondition(and (programmer ?p ? ?abilityp) (task ?t ?complexityt) (not (taskReviewAssigned ?t)) (taskAssigned ?t) (reviewInfo ? ?t ?pAnterior) (not (= ?p ?pAnterior)))
	;;	:effect (and (taskReviewAssigned ?rt) (programmerTask ?p ?rt))
	;;	)
)

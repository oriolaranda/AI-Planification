
(define (problem E1c)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 1)
	(= (ability p2) 3)
	(= (ability p3) 1)

        ;;Quality programmer
	(= (quality p1) 3)
	(= (quality p2) 2)
	(= (quality p3) 3)

        ;;Complexity tasks
	(= (complexity t1) 3)
	(= (complexity t2) 1)

        ;;Duration tasks
	(= (duration t1) 3)
	(= (duration t2) 3)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
)
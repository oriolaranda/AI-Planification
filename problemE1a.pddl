
(define (problem E1a)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 4)
	(= (ability p2) 3)
	(= (ability p3) 4)

        ;;Quality programmer
	(= (quality p1) 1)
	(= (quality p2) 4)
	(= (quality p3) 1)

        ;;Complexity tasks
	(= (complexity t1) 1)
	(= (complexity t2) 2)

        ;;Duration tasks
	(= (duration t1) 1)
	(= (duration t2) 1)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
)
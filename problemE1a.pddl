
(define (problem E1a)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 1)
		(= (ability p2) 4)
		(= (ability p3) 1)

        ;;Quality programmer
		(= (quality p1) 3)
		(= (quality p2) 1)
		(= (quality p3) 3)

        ;;Complexity tasks
		(= (complexity t1) 1)
		(= (complexity t2) 1)

        ;;Duration tasks
		(= (duration t1) 1)
		(= (duration t2) 3)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
)
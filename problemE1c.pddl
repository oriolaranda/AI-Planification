
(define (problem E1c)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 t3 t4 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 1)
		(= (ability p3) 2)

        ;;Quality programmer
		(= (quality p1) 1)
		(= (quality p2) 3)
		(= (quality p3) 2)

        ;;Complexity tasks
		(= (complexity t1) 3)
		(= (complexity t2) 3)
		(= (complexity t3) 4)
		(= (complexity t4) 1)

        ;;Duration tasks
		(= (duration t1) 1)
		(= (duration t2) 2)
		(= (duration t3) 1)
		(= (duration t4) 2)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
)
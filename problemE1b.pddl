
(define (problem E1b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 t4 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 3)
		(= (ability p3) 1)
		(= (ability p4) 5)

        ;;Quality programmer
		(= (quality p1) 3)
		(= (quality p2) 3)
		(= (quality p3) 5)
		(= (quality p4) 1)

        ;;Complexity tasks
		(= (complexity t1) 5)
		(= (complexity t2) 5)
		(= (complexity t3) 2)
		(= (complexity t4) 3)

        ;;Duration tasks
		(= (duration t1) 1)
		(= (duration t2) 4)
		(= (duration t3) 2)
		(= (duration t4) 5)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
)
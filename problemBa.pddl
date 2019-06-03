
(define (problem Ba)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 5)
		(= (ability p2) 5)
		(= (ability p3) 1)
		(= (ability p4) 1)

        ;;Quality programmer
		(= (quality p1) 2)
		(= (quality p2) 4)
		(= (quality p3) 3)
		(= (quality p4) 2)

        ;;Complexity tasks
		(= (complexity t1) 2)
		(= (complexity t2) 1)
		(= (complexity t3) 2)

        ;;Duration tasks
		(= (duration t1) 2)
		(= (duration t2) 4)
		(= (duration t3) 4)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (taskAssigned ?t)))
)
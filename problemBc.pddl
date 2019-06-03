
(define (problem Bc)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 1)
		(= (ability p2) 1)
		(= (ability p3) 3)

        ;;Quality programmer
		(= (quality p1) 2)
		(= (quality p2) 3)
		(= (quality p3) 3)

        ;;Complexity tasks
		(= (complexity t1) 2)
		(= (complexity t2) 3)

        ;;Duration tasks
		(= (duration t1) 2)
		(= (duration t2) 3)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (taskAssigned ?t)))
)
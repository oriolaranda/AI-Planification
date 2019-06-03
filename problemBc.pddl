
(define (problem Bc)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 3)
	(= (ability p2) 3)
	(= (ability p3) 1)

        ;;Quality programmer
	(= (quality p1) 1)
	(= (quality p2) 2)
	(= (quality p3) 4)

        ;;Complexity tasks
	(= (complexity t1) 3)
	(= (complexity t2) 2)

        ;;Duration tasks
	(= (duration t1) 2)
	(= (duration t2) 2)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (taskAssigned ?t)))
)
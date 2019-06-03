
(define (problem Bb)
    (:domain tasking)
    (:objects
        p1 p2 p3 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 4)
	(= (ability p2) 4)
	(= (ability p3) 4)

        ;;Quality programmer
	(= (quality p1) 3)
	(= (quality p2) 3)
	(= (quality p3) 3)

        ;;Complexity tasks
	(= (complexity t1) 2)
	(= (complexity t2) 1)

        ;;Duration tasks
	(= (duration t1) 3)
	(= (duration t2) 1)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (taskAssigned ?t)))
)
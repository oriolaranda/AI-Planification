
(define (problem Bb)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 2)
		(= (ability p2) 4)
		(= (ability p3) 3)
		(= (ability p4) 4)
		(= (ability p5) 2)

        ;;Quality programmer
		(= (quality p1) 4)
		(= (quality p2) 3)
		(= (quality p3) 5)
		(= (quality p4) 4)
		(= (quality p5) 6)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 1)
		(= (complexity t3) 3)

        ;;Duration tasks
		(= (duration t1) 1)
		(= (duration t2) 4)
		(= (duration t3) 3)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (taskAssigned ?t)))
)
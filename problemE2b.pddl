
(define (problem E2b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 - programmer
        t1 t2 t3 t4 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 6)
		(= (ability p3) 6)
		(= (ability p4) 4)
		(= (ability p5) 3)

        ;;Quality programmer
		(= (quality p1) 2)
		(= (quality p2) 3)
		(= (quality p3) 3)
		(= (quality p4) 1)
		(= (quality p5) 5)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 2)
		(= (complexity t3) 2)
		(= (complexity t4) 2)

        ;;Duration tasks
		(= (duration t1) 2)
		(= (duration t2) 2)
		(= (duration t3) 2)
		(= (duration t4) 1)

		;;TotalHours
		(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)

(define (problem E2c)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 1)
		(= (ability p2) 2)
		(= (ability p3) 2)
		(= (ability p4) 1)

        ;;Quality programmer
		(= (quality p1) 5)
		(= (quality p2) 2)
		(= (quality p3) 2)
		(= (quality p4) 4)

        ;;Complexity tasks
		(= (complexity t1) 1)
		(= (complexity t2) 4)
		(= (complexity t3) 3)

        ;;Duration tasks
		(= (duration t1) 3)
		(= (duration t2) 3)
		(= (duration t3) 2)

		;;TotalHours
		(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)
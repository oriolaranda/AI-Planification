
(define (problem E2c)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 5)
	(= (ability p2) 4)
	(= (ability p3) 1)
	(= (ability p4) 4)

        ;;Quality programmer
	(= (quality p1) 4)
	(= (quality p2) 1)
	(= (quality p3) 3)
	(= (quality p4) 1)

        ;;Complexity tasks
	(= (complexity t1) 4)
	(= (complexity t2) 1)
	(= (complexity t3) 3)

        ;;Duration tasks
	(= (duration t1) 3)
	(= (duration t2) 2)
	(= (duration t3) 2)

	;;TotalHours
	(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)
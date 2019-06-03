
(define (problem E2b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 3)
	(= (ability p2) 5)
	(= (ability p3) 4)
	(= (ability p4) 2)

        ;;Quality programmer
	(= (quality p1) 3)
	(= (quality p2) 2)
	(= (quality p3) 2)
	(= (quality p4) 4)

        ;;Complexity tasks
	(= (complexity t1) 4)
	(= (complexity t2) 3)
	(= (complexity t3) 1)

        ;;Duration tasks
	(= (duration t1) 3)
	(= (duration t2) 4)
	(= (duration t3) 4)

	;;TotalHours
	(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)
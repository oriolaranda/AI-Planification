
(define (problem E2a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 4)
	(= (ability p2) 1)
	(= (ability p3) 3)
	(= (ability p4) 1)

        ;;Quality programmer
	(= (quality p1) 5)
	(= (quality p2) 2)
	(= (quality p3) 1)
	(= (quality p4) 3)

        ;;Complexity tasks
	(= (complexity t1) 2)
	(= (complexity t2) 3)
	(= (complexity t3) 1)

        ;;Duration tasks
	(= (duration t1) 4)
	(= (duration t2) 4)
	(= (duration t3) 3)

	;;TotalHours
	(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)
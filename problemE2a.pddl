
(define (problem E2a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 t4 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 5)
		(= (ability p2) 2)
		(= (ability p3) 4)
		(= (ability p4) 2)

        ;;Quality programmer
		(= (quality p1) 4)
		(= (quality p2) 4)
		(= (quality p3) 1)
		(= (quality p4) 4)

        ;;Complexity tasks
		(= (complexity t1) 1)
		(= (complexity t2) 3)
		(= (complexity t3) 3)
		(= (complexity t4) 4)

        ;;Duration tasks
		(= (duration t1) 3)
		(= (duration t2) 3)
		(= (duration t3) 3)
		(= (duration t4) 3)

		;;TotalHours
		(= (totalHours) 0)

    )
    ;; The goal is:
    (:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))
)
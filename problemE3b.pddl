
(define (problem E3b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 5)
	(= (ability p2) 4)
	(= (ability p3) 2)
	(= (ability p4) 5)

        ;;Quality programmer
	(= (quality p1) 3)
	(= (quality p2) 3)
	(= (quality p3) 2)
	(= (quality p4) 1)

        ;;Complexity tasks
	(= (complexity t1) 2)
	(= (complexity t2) 3)

        ;;Duration tasks
	(= (duration t1) 2)
	(= (duration t2) 3)

	;;TotalHours
	(= (totalHours) 0)

	;;NumTasks programmer
	(= (numTasks p1) 0)
	(= (numTasks p2) 0)
	(= (numTasks p3) 0)
	(= (numTasks p4) 0)

    )
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric minimize(totalHours))
)
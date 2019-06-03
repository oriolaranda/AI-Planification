
(define (problem E3b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 4)
		(= (ability p3) 1)
		(= (ability p4) 3)

        ;;Quality programmer
		(= (quality p1) 4)
		(= (quality p2) 2)
		(= (quality p3) 4)
		(= (quality p4) 5)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 3)
		(= (complexity t3) 1)

        ;;Duration tasks
		(= (duration t1) 4)
		(= (duration t2) 1)
		(= (duration t3) 4)

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
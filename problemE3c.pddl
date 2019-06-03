
(define (problem E3c)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 - programmer
        t1 t2 t3 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 2)
		(= (ability p2) 6)
		(= (ability p3) 4)
		(= (ability p4) 4)
		(= (ability p5) 1)

        ;;Quality programmer
		(= (quality p1) 6)
		(= (quality p2) 2)
		(= (quality p3) 2)
		(= (quality p4) 1)
		(= (quality p5) 5)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 2)
		(= (complexity t3) 2)

        ;;Duration tasks
		(= (duration t1) 2)
		(= (duration t2) 2)
		(= (duration t3) 3)

		;;TotalHours
		(= (totalHours) 0)

		;;NumTasks programmer
		(= (numTasks p1) 0)
		(= (numTasks p2) 0)
		(= (numTasks p3) 0)
		(= (numTasks p4) 0)
		(= (numTasks p5) 0)

    )
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric minimize(totalHours))
)
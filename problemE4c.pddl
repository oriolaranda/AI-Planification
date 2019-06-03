
(define (problem E4c)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 p6 p7 - programmer
        t1 t2 t3 t4 t5 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 8)
		(= (ability p2) 4)
		(= (ability p3) 5)
		(= (ability p4) 6)
		(= (ability p5) 1)
		(= (ability p6) 5)
		(= (ability p7) 1)

        ;;Quality programmer
		(= (quality p1) 2)
		(= (quality p2) 8)
		(= (quality p3) 1)
		(= (quality p4) 5)
		(= (quality p5) 1)
		(= (quality p6) 5)
		(= (quality p7) 2)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 3)
		(= (complexity t3) 4)
		(= (complexity t4) 2)
		(= (complexity t5) 3)

        ;;Duration tasks
		(= (duration t1) 4)
		(= (duration t2) 3)
		(= (duration t3) 6)
		(= (duration t4) 4)
		(= (duration t5) 5)

		;;TotalHours
		(= (totalHours) 0)

		;;NumTasks programmer
		(= (numTasks p1) 0)
		(= (numTasks p2) 0)
		(= (numTasks p3) 0)
		(= (numTasks p4) 0)
		(= (numTasks p5) 0)
		(= (numTasks p6) 0)
		(= (numTasks p7) 0)

		;;WorkingProgrammers
		(= (workingProgrammers) 0)

    )
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric maximize (+ (* 10 (workingProgrammers)) (* 1 (totalHours))))
)
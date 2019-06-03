
(define (problem E4b)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 p6 p7 - programmer
        t1 t2 t3 t4 t5 t6 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 7)
		(= (ability p3) 2)
		(= (ability p4) 4)
		(= (ability p5) 8)
		(= (ability p6) 5)
		(= (ability p7) 1)

        ;;Quality programmer
		(= (quality p1) 5)
		(= (quality p2) 2)
		(= (quality p3) 5)
		(= (quality p4) 3)
		(= (quality p5) 2)
		(= (quality p6) 4)
		(= (quality p7) 1)

        ;;Complexity tasks
		(= (complexity t1) 4)
		(= (complexity t2) 6)
		(= (complexity t3) 7)
		(= (complexity t4) 7)
		(= (complexity t5) 5)
		(= (complexity t6) 7)

        ;;Duration tasks
		(= (duration t1) 4)
		(= (duration t2) 4)
		(= (duration t3) 2)
		(= (duration t4) 7)
		(= (duration t5) 6)
		(= (duration t6) 1)

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
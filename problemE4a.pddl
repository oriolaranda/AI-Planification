
(define (problem E4a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 p5 p6 p7 p8 - programmer
        t1 t2 t3 t4 t5 t6 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 3)
		(= (ability p2) 8)
		(= (ability p3) 2)
		(= (ability p4) 9)
		(= (ability p5) 6)
		(= (ability p6) 1)
		(= (ability p7) 7)
		(= (ability p8) 7)

        ;;Quality programmer
		(= (quality p1) 7)
		(= (quality p2) 4)
		(= (quality p3) 5)
		(= (quality p4) 7)
		(= (quality p5) 9)
		(= (quality p6) 7)
		(= (quality p7) 9)
		(= (quality p8) 1)

        ;;Complexity tasks
		(= (complexity t1) 6)
		(= (complexity t2) 3)
		(= (complexity t3) 7)
		(= (complexity t4) 7)
		(= (complexity t5) 5)
		(= (complexity t6) 4)

        ;;Duration tasks
		(= (duration t1) 3)
		(= (duration t2) 3)
		(= (duration t3) 2)
		(= (duration t4) 5)
		(= (duration t5) 4)
		(= (duration t6) 2)

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
		(= (numTasks p8) 0)

		;;WorkingProgrammers
		(= (workingProgrammers) 0)

    )
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric maximize (+ (* 10 (workingProgrammers)) (* 1 (totalHours))))
)

(define (problem E4a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 4)
		(= (ability p2) 5)
		(= (ability p3) 5)
		(= (ability p4) 4)

        ;;Quality programmer
		(= (quality p1) 5)
		(= (quality p2) 1)
		(= (quality p3) 1)
		(= (quality p4) 3)

        ;;Complexity tasks
		(= (complexity t1) 1)
		(= (complexity t2) 1)

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

		;;WorkingProgrammers
		(= (workingProgrammers) 0)
    )
    
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    
	(:metric maximize (+ (* 10 (workingProgrammers)) (* 1 (totalHours))))
)


(define (problem E4a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
	(= (ability p1) 3)
	(= (ability p2) 3)
	(= (ability p3) 4)
	(= (ability p4) 5)

        ;;Quality programmer
	(= (quality p1) 3)
	(= (quality p2) 2)
	(= (quality p3) 3)
	(= (quality p4) 5)

        ;;Complexity tasks
	(= (complexity t1) 3)
	(= (complexity t2) 3)

        ;;Duration tasks
	(= (duration t1) 3)
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
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTareas ?p) 2))) )
	(:metric (and (minimize (totalHours)) (maximize (+ (* 1 (workingProgrammers)) (* 1 (totalHours))))))
)
(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee rice corn - crop
  )

  (:init
    (= (emission-level coffee) 100)
    (= (emission-level rice) 90)
    (= (emission-level corn) 100)
    (= (budget coffee) 2000)
    (= (budget rice) 2000)
    (= (budget corn) 2000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (<= (emission-level coffee) 80)
        (<= (emission-level rice) 50)
        (<= (emission-level corn) 20)
        )
  )

  (:metric minimize (total-budget-used))
)

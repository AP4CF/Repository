(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee rice - crop
  )

  (:init
    (= (emission-level coffee) 100)
    (= (emission-level rice) 90)
    (= (budget coffee) 1000)
    (= (budget rice) 1000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (= (emission-level coffee) 80)
        (= (emission-level rice) 50)
        )
  )

  (:metric minimize (total-budget-used))
)

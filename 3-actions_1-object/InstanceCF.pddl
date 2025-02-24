(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee - crop
  )

  (:init
    (= (emission-level coffee) 100)
    (= (budget coffee) 1000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (= (emission-level coffee) 80))
  )

  (:metric minimize (total-budget-used))
)

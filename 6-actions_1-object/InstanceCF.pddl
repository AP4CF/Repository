(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee - crop
  )

  (:init
    (= (emission-level coffee) 70)
    (= (budget palm) 6000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (<= (emission-level palm) 10)
        )
  )

  (:metric minimize (total-budget-used))
)

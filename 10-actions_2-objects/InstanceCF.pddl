(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee potato - crop
  )

  (:init
    (= (emission-level coffee) 60)
    (= (emission-level potato) 30)
    (= (budget coffee) 5000)
    (= (budget potato) 3000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (<= (emission-level coffee) 20)
        (<= (emission-level potato) 10)
        )

  )
  (:metric minimize (total-budget-used))
)

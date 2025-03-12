(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee potato cassava - crop
  )

  (:init
    (= (emission-level coffee) 85)
    (= (emission-level potato) 90)
    (= (emission-level cassava) 80)
    (= (budget coffee) 6000)
    (= (budget potato) 7000)
    (= (budget cassava) 10000)
    
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (<= (emission-level coffee) 20)
        (<= (emission-level cassava) 20)
        (<= (emission-level potato) 20)
        )

  )
  (:metric minimize (total-budget-used))
)

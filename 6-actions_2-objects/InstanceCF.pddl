(define (problem problem-cf)
	
  (:domain mitigation-cf)

  (:objects
    palm cassava - crop
  )

  (:init
    (= (emission-level palm) 70)
    (= (emission-level cassava) 65)
    (= (budget palm) 6000)
    (= (budget cassava) 6000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (= (emission-level palm) 20)
        (= (emission-level cassava) 15)
        )
  )

  (:metric minimize (total-budget-used))
)

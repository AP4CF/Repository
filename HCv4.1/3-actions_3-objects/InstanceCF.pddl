(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    palm avocado cocoa - crop
  )

  (:init
    (= (emission-level palm) 70)
    (= (emission-level avocado) 65)
    (= (emission-level cocoa) 50)
    (= (budget palm) 6000)
    (= (budget avocado) 6000)
    (= (budget cocoa) 6000)
    (= (total-budget-used) 0)
  ) 
  
  (:goal (and
        (= (emission-level palm) 20)
        (= (emission-level avocado) 10)
        (= (emission-level cocoa) 0)
        )
  )

  (:metric minimize (total-budget-used))
)

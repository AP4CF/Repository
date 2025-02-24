(define (problem problem-cf)
	
  (:domain mitigation-cf)

  (:objects
    palm avocado cocoa quinoa - crop
  )

  (:init
    (= (emission-level palm) 70)
    (= (emission-level avocado) 65)
    (= (emission-level cocoa) 50)
    (= (emission-level quinoa) 90)
    (= (budget palm) 6000)
    (= (budget avocado) 6000)
    (= (budget cocoa) 6000)
    (= (budget quinoa) 6000)
    (= (total-budget-used) 0)
  ) 
   
  (:goal (and
        (= (emission-level palm) 20)
        (= (emission-level avocado) 10)
        (= (emission-level cocoa) 0)
        (= (emission-level quinoa) 35)
        )
  )

  (:metric minimize (total-budget-used))
)

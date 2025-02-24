(define (domain mitigation-cf)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types crop)

  (:functions
    (emission-level ?c - crop)
    (budget ?c - crop)
    (total-budget-used)
  )

  (:action Incorporate_organic_fertilizer
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 20)
              (>= (budget ?c) 500)
              (<  (budget ?c) 1000)
              )
    :effect (and
              (decrease (emission-level ?c) 20)
              (decrease (budget ?c) 500) 
              (increase (total-budget-used) 500))
  ) 

  (:action Incorporate_combined_tillage
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 10)
              (>= (budget ?c) 100))
    :effect (and
              (decrease (emission-level ?c) 10)
              (decrease (budget ?c)  100)   
              (increase (total-budget-used) 100))
  )

  (:action Intercrop_crops
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 50)
              (>= (budget ?c) 300))
    :effect (and
              (decrease (emission-level ?c) 50)
              (decrease (budget ?c) 300)  
              (increase (total-budget-used) 300))
  )

)

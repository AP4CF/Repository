(define (domain mitigation-cf)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types crop)

  (:functions
    (emission-level ?c - crop)
    (budget ?c - crop)
    (total-budget-used)
  )

  (:action Incorporate_organic_compost
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 200)
              ; (<  (budget ?c) 200)
              )
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c) 200) 
              (increase (total-budget-used) 200))
  ) 

  (:action Incorporate_combined_tillage
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 100))
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c)  100)   
              (increase (total-budget-used) 100))
  )

  (:action Intercrop_crops
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 600))
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c) 600)  
              (increase (total-budget-used) 600))
  )

)

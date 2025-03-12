(define (domain mitigation-cf)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types crop)

  (:functions
  	(emission-level ?c - crop)
    (budget ?c - crop)
    (total-budget-used)
  )

  (:action Apply_organic_fertilizer
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 500)
              ; (<  (budget ?c) 1000)
              )
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c) 500) 
              (increase (total-budget-used) 500))
  ) 

  (:action Apply_combined_tillage
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 100))
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c)  100)   
              (increase (total-budget-used) 100))
  )

  (:action Intercrop_cultivation
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 30)
              (>= (budget ?c) 600))
    :effect (and
              (decrease (emission-level ?c) 30)
              (decrease (budget ?c) 600)  
              (increase (total-budget-used) 600))
  )

  (:action Use_nitrification_inhibitors
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 60)
              (>= (budget ?c) 400))
    :effect (and
              (decrease (emission-level ?c) 60)
              (decrease (budget ?c) 400)
              (increase (total-budget-used) 400)
    )
  )            
  

  (:action Reduce_fuel
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 80)
              (>= (budget ?c) 1000))
    :effect (and
              (decrease (emission-level ?c) 80)
              (decrease (budget ?c) 1000)
              (increase (total-budget-used) 1000))

  )
  
  (:action Plant_trees
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 10)
              (>= (budget ?c) 1000))
    :effect (and
              (decrease (emission-level ?c) 10)
              (decrease (budget ?c) 1000)
              (increase (total-budget-used) 1000))
  )
  

)

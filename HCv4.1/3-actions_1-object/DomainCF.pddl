(define (domain mitigation-cf)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types crop)

  (:functions
    (emission-level ?c - crop)
    (budget ?c - crop)
    (total-budget-used)
  )

  (:action Use_nitrification_inhibitors
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 25)
              (>= (budget ?c) 250))
    :effect (and
              (decrease (emission-level ?c) 25)
              (decrease (budget ?c) 250))
  )

  (:action Reduce_fuel
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 15)
              (>= (budget ?c) 150))
    :effect (and
              (decrease (emission-level ?c) 15)
              (decrease (budget ?c) 150))
  )
  
  (:action Plant_trees
    :parameters (?c - crop)
    :precondition (and 
              (>= (emission-level ?c) 5)
              (>= (budget ?c) 50))
    :effect (and
              (decrease (emission-level ?c) 5)
              (decrease (budget ?c) 50))
  )
)

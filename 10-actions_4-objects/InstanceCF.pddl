(define (problem problem-cf)
  
  (:domain mitigation-cf)

  (:objects
    coffee potato cassava rice - crop
  )

  (:init
    (= (emission-level coffee) 95)
    (= (emission-level potato) 85)
    (= (emission-level cassava) 100)
    (= (emission-level rice) 50)
    (= (budget coffee) 6000)
    (= (budget cassava) 8000)
    (= (budget rice) 7500)
    (= (budget potato) 4000)
    (= (total-budget-used) 0)
  ) 
  
; java -jar enhsp-20.jar -o Ejemplos/mitigation-cf-main/10-actions_4-objects/DomainCF.pddl -f Ejemplos/mitigation-cf-main/10-actions_4-objects/InstanceCF.pddl -pt -print_actions && type "Ejemplos\mitigation-cf-main\10-actions_4-objects\InstanceCF.pddl_search_gbfs_h_hadd_break_ties_arbitrary.npt"
  (:goal (and
        (<= (emission-level coffee) 20)
        (<= (emission-level cassava) 5)
        (<= (emission-level potato) 10)
        (= (emission-level rice) 0)
        )

  )
  (:metric minimize (total-budget-used))
)

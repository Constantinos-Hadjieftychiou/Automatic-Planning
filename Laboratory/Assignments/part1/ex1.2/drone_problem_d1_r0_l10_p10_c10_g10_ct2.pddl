(define (problem drone_problem_d1_r0_l10_p10_c10_g10_ct2)
  (:domain drone-domain)
  (:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
  )
  (:init
	(at drone1 depot)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(at crate4 depot)
	(at crate5 depot)
	(at crate6 depot)
	(at crate7 depot)
	(at crate8 depot)
	(at crate9 depot)
	(at crate10 depot)
	(has-content crate1 food)
	(has-content crate2 medicine)
	(has-content crate3 medicine)
	(has-content crate4 medicine)
	(has-content crate5 medicine)
	(has-content crate6 medicine)
	(has-content crate7 medicine)
	(has-content crate8 medicine)
	(has-content crate9 medicine)
	(has-content crate10 medicine)
	(at person1 loc3)
	(at person2 loc5)
	(at person3 loc10)
	(at person4 loc9)
	(at person5 loc8)
	(at person6 loc4)
	(at person7 loc9)
	(at person8 loc9)
	(at person9 loc4)
	(at person10 loc10)
  )
  (:goal (and
		(at drone1 depot)
		(delivered person1 medicine)
		(delivered person2 medicine)
		(delivered person3 medicine)
		(delivered person4 food)
		(delivered person4 medicine)
		(delivered person5 medicine)
		(delivered person6 medicine)
		(delivered person7 medicine)
		(delivered person8 medicine)
		(delivered person10 medicine)
  ))
)

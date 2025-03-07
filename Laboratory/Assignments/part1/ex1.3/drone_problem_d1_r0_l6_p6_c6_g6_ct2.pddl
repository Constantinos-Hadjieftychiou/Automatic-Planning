(define (problem drone_problem_d1_r0_l6_p6_c6_g6_ct2)
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
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
  )
  (:init
	(at drone1 depot)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(at crate4 depot)
	(at crate5 depot)
	(at crate6 depot)
	(has-content crate1 food)
	(has-content crate2 food)
	(has-content crate3 food)
	(has-content crate4 food)
	(has-content crate5 medicine)
	(has-content crate6 medicine)
	(at person1 loc6)
	(at person2 loc6)
	(at person3 loc6)
	(at person4 loc5)
	(at person5 loc3)
	(at person6 loc1)
  )
  (:goal (and
		(at drone1 depot)
		(delivered person1 food)
		(delivered person3 food)
		(delivered person3 medicine)
		(delivered person5 food)
		(delivered person6 food)
		(delivered person6 medicine)
  ))
)

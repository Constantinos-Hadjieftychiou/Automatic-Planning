(define (problem drone_problem_d1_r0_l3_p3_c3_g3_ct2)
  (:domain drone-domain)
  (:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
  )
  (:init
	(at drone1 depot)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(has-content crate1 food)
	(has-content crate2 food)
	(has-content crate3 medicine)
	(at person1 loc2)
	(at person2 loc2)
	(at person3 loc3)
  )
  (:goal (and
		(at drone1 depot)
		(delivered person1 food)
		(delivered person2 food)
		(delivered person2 medicine)
  ))
)

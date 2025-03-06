(define (problem drone_problem_d1_l3_p3_c3_g3)
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
	(at person1 loc3)
	(at person2 loc1)
	(at person3 loc3)
	(at crate1 loc2)
	(at crate2 loc3)
	(at crate3 loc1)
	(has-content crate1 medicine)
	(has-content crate2 food)
	(has-content crate3 medicine)
)

(:goal (and
	(has person3 food)
	(has person2 medicine)
	(has person1 medicine)
	(at drone1 depot)
))
)

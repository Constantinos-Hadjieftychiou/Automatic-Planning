(define (domain emergency-logistics)
    (:requirements :strips :typing)
    (:types
        drone person box arm content location
    )
    (:predicates
        (at-drone ?d - drone ?l - location)
        (at-person ?p - person ?l - location)
        (at-box ?b - box ?l - location)
        (box-contains ?b - box ?c - content)
        (free ?d - drone ?a - arm)
        (holding ?d - drone ?a - arm ?b - box)
        (needs ?p - person ?c - content)
        (has ?p - person ?c - content)
    )
    (:action fly
        :parameters (?d - drone ?from - location ?to - location)
        :precondition (at-drone ?d ?from)
        :effect (and (not (at-drone ?d ?from)) (at-drone ?d ?to))
    )
    (:action pick-up
        :parameters (?d - drone ?a - arm ?b - box ?l - location)
        :precondition (and (at-drone ?d ?l) (at-box ?b ?l) (free ?d ?a))
        :effect (and (holding ?d ?a ?b) (not (free ?d ?a)) (not (at-box ?b ?l)))
    )
    (:action deliver
        :parameters (?d - drone ?a - arm ?b - box ?p - person ?l - location ?c - content)
        :precondition (and (holding ?d ?a ?b) (at-drone ?d ?l) (at-person ?p ?l) (box-contains ?b ?c) (needs ?p ?c))
        :effect (and (has ?p ?c) (not (holding ?d ?a ?b)) (free ?d ?a))
    )
)
(define (domain drone-domain)
  (:requirements :strips :typing)
  ;; Define a supertype 'object' and declare drones, carriers, crates, and persons as subtypes.
  (:types object drone carrier crate person contents)
  (:types drone carrier crate person - object)
  
  (:predicates
    ;; All movable objects are at some location.
    (at ?x - object ?l - location)
    ;; Each crate has a specific content type.
    (has-content ?c - crate ?con - contents)
    ;; A drone is carrying a crate.
    (loaded ?d - drone ?c - crate)
    ;; Indicates that a person has been delivered a crate with a specific content.
    (delivered ?p - person ?con - contents)
  )
  
  (:action fly
    :parameters (?d - drone ?from - location ?to - location)
    :precondition (at ?d ?from)
    :effect (and 
              (not (at ?d ?from))
              (at ?d ?to))
  )
  
  (:action load
    :parameters (?d - drone ?c - crate ?l - location)
    :precondition (and 
                    (at ?d ?l)
                    (at ?c ?l))
    :effect (and 
              (not (at ?c ?l))
              (loaded ?d ?c))
  )
  
  (:action unload
    :parameters (?d - drone ?c - crate ?l - location)
    :precondition (loaded ?d ?c)
    :effect (and 
              (not (loaded ?d ?c))
              (at ?c ?l))
  )
  
  (:action deliver
    :parameters (?d - drone ?c - crate ?p - person ?l - location ?con - contents)
    :precondition (and 
                    (loaded ?d ?c)
                    (at ?d ?l)
                    (at ?p ?l)
                    (has-content ?c ?con))
    :effect (and 
              (delivered ?p ?con)
              (not (loaded ?d ?c))
              (at ?c ?l))
  )
)

(define (problem esl-problem2)
    (:domain emergency-logistics)
    (:objects
        d1 - drone
        p1 p2 - person
        b1 b2 b3 - box
        left right - arm
        food medicine - content
        depot loc1 loc2 - location
    )
    (:init
        (at-drone d1 depot)
        (at-box b1 depot)
        (at-box b2 depot)
        (at-box b3 depot)
        (at-person p1 loc1)
        (at-person p2 loc2)
        (box-contains b1 food)
        (box-contains b2 medicine)
        (box-contains b3 food)
        (free d1 left)
        (free d1 right)
        (needs p1 food)
        (needs p2 medicine)
    )
    (:goal
        (and (has p1 food) (has p2 medicine))
    )
)
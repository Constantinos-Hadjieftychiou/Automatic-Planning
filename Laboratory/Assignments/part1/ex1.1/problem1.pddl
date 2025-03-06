(define (problem esl-problem1)
    (:domain emergency-logistics)
    (:objects
        d1 - drone
        p1 - person
        b1 - box
        left right - arm
        food - content
        depot loc1 - location
    )
    (:init
        (at-drone d1 depot)
        (at-box b1 depot)
        (at-person p1 loc1)
        (box-contains b1 food)
        (free d1 left)
        (free d1 right)
        (needs p1 food)
    )
    (:goal
        (has p1 food)
    )
)
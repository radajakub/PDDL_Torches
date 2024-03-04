(define (domain torch)

    (:requirements :typing :action-costs)

    (:types
        island guy - object
    )

    (:predicates
        (has-torch ?g - guy)
        (at ?g - guy ?i - island)
        (bridge ?i1 ?i2 - island)
        (faster ?g1 ?g2 - guy)
    )

    (:functions
        (crossing-cost ?g) - number
        (total-cost) - number
    )

    (:action pass-torch
        :parameters (?g1 ?g2 - guy ?i - island)

        :precondition (and
            (at ?g1 ?i)
            (at ?g2 ?i)
            (has-torch ?g1)
            (not (has-torch ?g2))
        )

        :effect (and
            (not (has-torch ?g1))
            (has-torch ?g2)
        )
    )

    (:action cross
        :parameters (?g - guy ?i1 ?i2 - island)

        :precondition (and
            (at ?g ?i1)
            (bridge ?i1 ?i2)
            (has-torch ?g)
        )

        :effect (and
            (not (at ?g ?i1))
            (at ?g ?i2)
            (increase (total-cost) (crossing-cost ?g))
        )
    )

    (:action cross
        :parameters (?g1 ?g2 - guy ?i1 ?i2 - island)

        :precondition (and
            (not (= ?g1 ?g2))
            (at ?g1 ?i1)
            (at ?g2 ?i1)
            (bridge ?i1 ?i2)
            (has-torch ?g1)
            (faster ?g1 ?g2)
        )

        :effect (and
            (not (at ?g1 ?i1))
            (not (at ?g2 ?i1))
            (at ?g1 ?i2)
            (at ?g2 ?i2)
            (increase (total-cost) (crossing-cost ?g2))
        )
    )
)

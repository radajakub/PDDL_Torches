(define (domain torch)

    (:requirements :typing :action-costs)

    (:types
        island guy - object
    )

    (:predicates
        (has-torch ?g - guy)
        (located ?g - guy ?i - island)
        (bridge ?i1 ?i2 - island)
    )

    (:functions
        (crossing-cost ?g) - number
        (total-cost) - number
    )

    ; TODO: maybe add another action for crossing as a single guy

    (:action cross
        :parameters (?g1 ?g2 - guy ?i1 ?i2 - island)

        :precondition (and
            (located ?g1 ?i1)
            (located ?g2 ?i1)
            (or (bridge ?i1 ?i2) (bridge ?i2 ?i1))
            (has-torch ?g1)
        )

        :effect (and
            (not (located ?g1 ?i1))
            (not (located ?g2 ?i1))
            (located ?g1 ?i2)
            (located ?g2 ?i2)
            (increase (total-cost) 1)
        )
    )
    (:action pass-torch
        :parameters (?g1 ?g2 - guy ?i - island)
        :precondition (and
            (located ?g1 ?i)
            (located ?g2 ?i)
            (has-torch ?g1)
            (not (has-torch ?g2))
        )
        :effect (and
            (not (has-torch ?g1))
            (has-torch ?g2)
        )
    )
)

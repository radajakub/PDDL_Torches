(define (problem p2)
    (:domain torch)

    (:objects
        l r - island
        a b c d e f - guy
    )

    (:init
        (bridge l r)
        (bridge r l)

        (has-torch a)
        (has-torch b)

        (located a l)
        (located b l)
        (located c l)
        (located d l)
        (located e l)
        (located f l)

        (= (crossing-cost a) 1)
        (= (crossing-cost b) 2)
        (= (crossing-cost c) 3)
        (= (crossing-cost d) 4)
        (= (crossing-cost e) 5)
        (= (crossing-cost f) 6)
    )

    (:goal
        (and
            (located a r)
            (located b r)
            (located c r)
            (located d r)
            (located e r)
            (located f r)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

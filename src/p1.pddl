(define (problem p1)
    (:domain torch)

    (:objects
        l r - island
        a b c d - guy
    )

    (:init
        (bridge l r)
        (bridge r l)

        (has-torch a)

        (located a l)
        (located b l)
        (located c l)
        (located d l)

        (= (crossing-cost a) 1)
        (= (crossing-cost b) 2)
        (= (crossing-cost c) 5)
        (= (crossing-cost d) 8)
    )

    (:goal
        (and
            (located a r)
            (located b r)
            (located c r)
            (located d r)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

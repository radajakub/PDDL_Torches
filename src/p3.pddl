(define (problem p3)
    (:domain torch)

    (:objects
        i1 i2 i3 i4 - island
        a b c d e f - guy
    )

    (:init
        (bridge i1 i2)
        (bridge i2 i3)
        (bridge i2 i4)

        (has-torch a)
        (has-torch f)

        (located a i1)
        (located b i1)
        (located c i1)
        (located d i1)
        (located e i1)
        (located f i1)

        (= (crossing-cost a) 1)
        (= (crossing-cost b) 2)
        (= (crossing-cost c) 3)
        (= (crossing-cost d) 4)
        (= (crossing-cost e) 5)
        (= (crossing-cost f) 6)
    )

    (:goal
        (and
            (located a i3)
            (located b i3)
            (located c i3)
            (located d i4)
            (located e i4)
            (located f i4)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

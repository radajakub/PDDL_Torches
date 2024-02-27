(define (problem p3)
    (:domain torch)

    (:objects
        i1 i2 i3 i4 - island
        a b c d e f - guy
    )

    (:init
        (bridge i1 i2)
        (bridge i2 i1)
        (bridge i2 i3)
        (bridge i3 i2)
        (bridge i2 i4)
        (bridge i4 i2)

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

        (= (pair-cost a a) 1)
        (= (pair-cost a b) 2)
        (= (pair-cost a c) 3)
        (= (pair-cost a d) 4)
        (= (pair-cost a e) 5)
        (= (pair-cost a f) 6)

        (= (pair-cost b a) 2)
        (= (pair-cost b b) 2)
        (= (pair-cost b c) 3)
        (= (pair-cost b d) 4)
        (= (pair-cost b e) 5)
        (= (pair-cost b f) 6)

        (= (pair-cost c a) 3)
        (= (pair-cost c b) 3)
        (= (pair-cost c c) 3)
        (= (pair-cost c d) 4)
        (= (pair-cost c e) 5)
        (= (pair-cost c f) 6)

        (= (pair-cost d a) 4)
        (= (pair-cost d b) 4)
        (= (pair-cost d c) 4)
        (= (pair-cost d d) 4)
        (= (pair-cost d e) 5)
        (= (pair-cost d f) 6)

        (= (pair-cost e a) 5)
        (= (pair-cost e b) 5)
        (= (pair-cost e c) 5)
        (= (pair-cost e d) 5)
        (= (pair-cost e e) 5)
        (= (pair-cost e f) 6)

        (= (pair-cost f a) 6)
        (= (pair-cost f b) 6)
        (= (pair-cost f c) 6)
        (= (pair-cost f d) 6)
        (= (pair-cost f e) 6)
        (= (pair-cost f f) 6)
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

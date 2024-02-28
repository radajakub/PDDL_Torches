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

        (= (pair-cost a a) 1)
        (= (pair-cost a b) 2)
        (= (pair-cost a c) 5)
        (= (pair-cost a d) 8)

        (= (pair-cost b a) 2)
        (= (pair-cost b b) 2)
        (= (pair-cost b c) 5)
        (= (pair-cost b d) 8)

        (= (pair-cost c a) 5)
        (= (pair-cost c b) 5)
        (= (pair-cost c c) 5)
        (= (pair-cost c d) 8)

        (= (pair-cost d a) 8)
        (= (pair-cost d b) 8)
        (= (pair-cost d c) 8)
        (= (pair-cost d d) 8)
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

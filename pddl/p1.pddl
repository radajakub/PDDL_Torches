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

        (at a l)
        (at b l)
        (at c l)
        (at d l)

        (= (crossing-cost a) 1)
        (= (crossing-cost b) 2)
        (= (crossing-cost c) 5)
        (= (crossing-cost d) 8)

        (cheaper a b)
        (cheaper a c)
        (cheaper a d)

        (cheaper b c)
        (cheaper b d)

        (cheaper c d)
    )

    (:goal
        (and
            (at a r)
            (at b r)
            (at c r)
            (at d r)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

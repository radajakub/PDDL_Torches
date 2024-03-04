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

        (at a l)
        (at b l)
        (at c l)
        (at d l)
        (at e l)
        (at f l)

        (= (crossing-cost a) 1)
        (= (crossing-cost b) 2)
        (= (crossing-cost c) 3)
        (= (crossing-cost d) 4)
        (= (crossing-cost e) 5)
        (= (crossing-cost f) 6)

        (cheaper a b)
        (cheaper a c)
        (cheaper a d)
        (cheaper a e)
        (cheaper a f)
        (cheaper b c)
        (cheaper b d)
        (cheaper b e)
        (cheaper b f)
        (cheaper c d)
        (cheaper c e)
        (cheaper c f)
        (cheaper d e)
        (cheaper d f)
        (cheaper e f)
    )

    (:goal
        (and
            (at a r)
            (at b r)
            (at c r)
            (at d r)
            (at e r)
            (at f r)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

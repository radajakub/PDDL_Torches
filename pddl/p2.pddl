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

        (faster a b)
        (faster a c)
        (faster a d)
        (faster a e)
        (faster a f)

        (faster b c)
        (faster b d)
        (faster b e)
        (faster b f)

        (faster c d)
        (faster c e)
        (faster c f)

        (faster d e)
        (faster d f)

        (faster e f)
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

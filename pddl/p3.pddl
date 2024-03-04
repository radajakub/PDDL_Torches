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

        (at a i1)
        (at b i1)
        (at c i1)
        (at d i1)
        (at e i1)
        (at f i1)

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
            (at a i3)
            (at b i3)
            (at c i3)
            (at d i4)
            (at e i4)
            (at f i4)
        )
    )

    (:metric minimize
        (total-cost)
    )

)

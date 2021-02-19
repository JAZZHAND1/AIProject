(define (problem RoadSystem_Problem)

(:domain RoadSystem)

(:objects

car - vehicle

A B C D E  - location)

(:init



    (at car A)

    (= (fuel-level car) 100)

    (accessible A B)

    (accessible B A)

    (accessible B E)

    (accessible E B)

    (accessible A C)

    (accessible C B)

    (accessible B C)

    (accessible B D)

    (accessible D B)

    (accessible E D)

    (accessible D E)



    (toll-station B)

    (fuel-station C)

   



    (= (time-required A B) 50)

    (= (time-required B A) 45)

    (= (time-required B E) 46)

    (= (time-required E B) 41)

    (= (time-required A C) 21)

    (= (time-required C B) 36)

    (= (time-required B C) 39)

    (= (time-required B D) 61)

    (= (time-required D B) 54)

    (= (time-required E D) 24)

    (= (time-required D E) 29) 

    (= (time-required A D) 81)

    (= (time-required D A) 81)

    

    (= (distance A B) 10)

    (= (distance B A) 10)

    (= (distance B E) 15)

    (= (distance E B) 15)

    (= (distance A C) 12)

    (= (distance C B) 14)

    (= (distance B C) 17)

    (= (distance B D) 22)

    (= (distance D B) 22)

    (= (distance E D) 23)

    (= (distance D E) 24)

    (= (distance A D) 31)

    (= (distance D A) 31)

    

    

    (= (toll-price B) 10)

    (= (fuel-required-per-km).2)

    (= (fuel-used car) 0)

    (= (time-taken car) 0)

    (= (total-monetary-cost) 0)

    



)

(:goal (and (at car E))

)



(:metric minimize (total-monetary-cost)



)







)
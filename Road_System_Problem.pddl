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
   
    (= (fuel-required A B) 40)
    (= (fuel-required B A) 40)
    (= (fuel-required B E) 30)
    (= (fuel-required E B) 30)
    (= (fuel-required A C) 20)
    (= (fuel-required C B) 25)
    (= (fuel-required B C) 25)
    (= (fuel-required B D) 22)
    (= (fuel-required D B) 21)
    (= (fuel-required E D) 50)
    (= (fuel-required D E) 35)
    (= (fuel-required A D) 120)
    (= (fuel-required D A) 120)

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
    
    (= (toll-price B) 10)

    (= (total-fuel-used) 0)
    (= (fuel-used car) 0)
    (= (time-taken car) 0)
    (= (total-monetary-cost) 0)
    

)
(:goal (and (at car E))
)

(:metric minimize (total-monetary-cost)

)



)
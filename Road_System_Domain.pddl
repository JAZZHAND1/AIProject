(define (domain RoadSystem)
(:requirements :strips :typing :fluents)
(:types 
 vehicle location - object
 normal toll - location
 )
(:predicates (at ?v - vehicle ?p - location)
             (accessible ?p1 ?p2 - location)
             (toll-station ?p - location)
             (fuel-station ?p - location)

)

(:functions (fuel-level ?v - vehicle)
            (fuel-used ?v - vehicle)
            (time-taken ?v - vehicle)
            (fuel-required ?p1 ?p2 - location)
            (time-required ?p1 ?p2 - location)
            (total-fuel-used) 
            (toll-price ?p1 - location) 
            (total-monetary-cost)
          ;  (total-time-taken)

         
)


(:action drive
    :parameters (?v - vehicle ?from ?to - location)
    :precondition (and (at ?v ?from)
                  (accessible ?from ?to)
                (>= (fuel-level ?v) (fuel-required ?from ?to))
                )
    :effect (and (not (at ?v ?from))
                 (at ?v ?to)
                 (decrease (fuel-level ?v) (fuel-required ?from ?to))
                 (increase (total-fuel-used) (fuel-required ?from ?to))
                 (increase (fuel-used ?v) (fuel-required ?from ?to))
                 (increase (time-taken ?v) (time-required ?from ?to))
                 (when
                 (and(toll-station ?to))
                 (increase (total-monetary-cost) (toll-price ?to))
                 )        
            )
)

(:action refuel
    :parameters (?v - vehicle ?at - location)
    :precondition (and (at ?v ?at)
                  (fuel-station ?at)
                 (<=(fuel-level ?v) 10)
                 )
    :effect (and (increase (fuel-level ?v) 40)
            (increase (time-taken ?v) 10)
            )
)


)
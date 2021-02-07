(define (domain RoadSystem)
(:requirements :strips :typing :fluents)
(:types 
 vehicle location - object
 normal toll - location
 )
(:predicates (at ?v - vehicle ?p - location)
             (accessible ?p1 ?p2 - location)
             (is-bike ?v - vehicle)

)

(:functions (fuel-level ?v - vehicle)
            (fuel-used ?v - vehicle)
            (fuel-required ?p1 ?p2 - location)
            (total-fuel-used)
         
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
                 (when
                 (and(is-bike ?v))
                  (and(not(is-bike ?v)))
                   )
            )
)


)

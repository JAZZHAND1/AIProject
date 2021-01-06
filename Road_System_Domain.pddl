define (domain Road_System)
(:requirements :strips)
(:predicates (at ?x-location)
             (timecost ?x-location ?y-location ?t-time)
             (connection ?x-location ?y-location)
             (fuel_station ?x-location)
             (toll_station ?x-location)
             (set_fuel_amount ?x ?y-fuel_amount)
             (increase_cost ?x ?y-cost_amount)
             (decrease_fuel ?x ?y-fuel_amount)
             (add_time ?x-time)
             
(:types
   location time fuel_amount cost_amount vehicle -object
   
)
(:constraints
)

(:functions
  (distance ?x ?y - location)
  (add_cost ?x - cost_amount)
  (add_fuel ?x - fuel_amount)
  (total-monetary-cost)
  (total-fuel-cost)
)

(:action drive
:parameters (?from ?to)
:precondition (and (at ?from) 
              (connection ?from ?to)
:effect  (and (at ?to) 
              (not (at ?from )) 
 )) 

(:action refuel
:parameters (?x)
:precondition (and (at ?x) 
              (fuel_station ?x)
:effect  (and (at ?to) 
              (not (at ?from )) 
 ))

(:action paytoll
:parameters (?x)
:precondition (and (at ?x) 
              (toll_station ?x)
:effect  () 
 ))
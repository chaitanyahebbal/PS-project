(define (domain atWork_Domain_v2)
    (:requirements :typing :fluents)
    (:types
      Robot - object
      Object - object
      Station - object
    )
    (:predicates
      (inRobot ?obj - Object ?rob - Robot)
      (atStation ?rob - Robot ?sta - Station)
      (inStation ?obj - Object ?sta - Station)
      (connected ?sta - Station ?sta1 - Station)
    )
    (:functions
      (nOfObjects ?rob - Robot) - number
      (distance ?from - Station ?to - Station) - number
      (travelledDistance) - number
      (robotCapacity) - number
    )
    (:action move
     :parameters (?self - Robot ?from - Station ?to - Station)
     :precondition 
       (and
         (atStation ?self ?from)
         (connected ?from ?to)
       )
     :effect
       (and
         (atStation ?self ?to)
         (increase (travelledDistance) (distance ?from ?to))
         (not (atStation ?self ?from))
       )
    )

    (:action pick
     :parameters (?self - Robot ?load - Object ?location - Station)
     :precondition 
       (and
         (atStation ?self ?location)
         (inStation ?load ?location)
         (<= (nOfObjects ?self) (robotCapacity))
       )
     :effect
       (and
         (inRobot ?load ?self)
         (increase (nOfObjects ?self) 1)
         (not (inStation ?load ?location))
       )
    )

    (:action drop
     :parameters (?self - Robot ?location - Station ?load - Object)
     :precondition 
       (and
         (atStation ?self ?location)
         (inRobot ?load ?self)
       )
     :effect
       (and
         (inStation ?load ?location)
         (decrease (nOfObjects ?self) 1)
         (not (inRobot ?load ?self))
       )
    )

)

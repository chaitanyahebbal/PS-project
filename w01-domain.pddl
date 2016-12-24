;; At work domain
;;

(define (domain atwork)
  (:requirements :typing)
  (:types robot location item)

  (:predicates 
     (path ?l1 ?l2 - location)
     (at ?r - robot ?l - location)
     (on ?l - location ?o - item)
     (holding ?r - robot ?o - item)
  )

;;  (:functions
;;     (path-length ?l1 ?l2 - location) - number
;;     (total-cost) - number
;;  )

  (:action move-to
    :parameters (?r - robot ?l1 ?l2 - location)
    :precondition (and
        (at ?r ?l1)
        (path ?l1 ?l2)
      )
    :effect (and
        (not (at ?r ?l1))
        (at ?r ?l2)
;;        (increase (total-cost) (road-length ?l1 ?l2))
      )
  )

 (:action pick-up
    :parameters (?r - robot ?l - location ?o - item)
    :precondition (and
        (at ?r ?l)
        (on ?l ?o)
      )
    :effect (and
        (not (on ?l ?o))
        (holding ?r ?o)
      )
  )

  (:action drop
    :parameters (?r - robot ?l - location ?o - item)
    :precondition (and
        (not (on ?l ?o))
        (holding ?r ?o)
        (at ?r ?l)
      )
    :effect (and
        (not (holding ?r ?o))
        (on ?l ?o)
      )
  )

)

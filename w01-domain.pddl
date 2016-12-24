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
    :parameters (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
    :precondition (and
        (at ?v ?l)
        (at ?p ?l)
        (capacity-predecessor ?s1 ?s2)
        (capacity ?v ?s2)
      )
    :effect (and
        (not (at ?p ?l))
        (in ?p ?v)
        (capacity ?v ?s1)
        (not (capacity ?v ?s2))
        (increase (total-cost) 1)
      )
  )

  (:action drop
    :parameters (?v - vehicle ?l - location ?p - package ?s1 ?s2 - capacity-number)
    :precondition (and
        (at ?v ?l)
        (in ?p ?v)
        (capacity-predecessor ?s1 ?s2)
        (capacity ?v ?s1)
      )
    :effect (and
        (not (in ?p ?v))
        (at ?p ?l)
        (capacity ?v ?s2)
        (not (capacity ?v ?s1))
        (increase (total-cost) 1)
      )
  )

)

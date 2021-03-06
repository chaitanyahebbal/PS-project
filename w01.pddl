; atwork problem-1

(define (problem atwork-3)
 (:domain atwork)
 (:objects
  bot-1 - robot
  station-1 - location
  station-2 - location
  station-3 - location
  object-1 - item
  object-2 - item
  object-3 - item
 )
 (:init
  (path station-1 station-2)
  (path station-1 station-3)
  (path station-2 station-1)
  (path station-2 station-3)
  (path station-3 station-1)
  (path station-3 station-2)
  (on station-1 object-1)
  (on station-2 object-2)
  (on station-3 object-3)
  (at bot-1 station-1)
 )
 (:goal (and
  (on station-3 object-1)
  (on station-3 object-2)
  (on station-3 object-3)
 ))
)

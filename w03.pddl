; atwork problem-3

(define (problem atwork-3)
 (:domain atwork)
 (:objects
  bot-1 - robot
  station-1 - location
  station-2 - location
  station-3 - location
  station-4 - location
  station-5 - location
  object-1 - item
  object-2 - item
  object-3 - item
  object-4 - item
  object-5-1 - item
  object-5-2 - item
  object-6 - item
  object-7 - item
  object-8 - item
 )
 (:init
  (path station-1 station-2)
  (path station-1 station-3)
  (path station-1 station-4)
  (path station-1 station-5)
  (path station-1 station-6)
  (path station-2 station-1)
  (path station-2 station-3)
  (path station-2 station-4)
  (path station-2 station-5)
  (path station-2 station-6)
  (path station-3 station-1)
  (path station-3 station-2)
  (path station-3 station-4)
  (path station-3 station-5)
  (path station-3 station-6)
  (on station-5 object-5-1)
  (on station-5 object-4)
  (on station-5 object-1)
  (on station-2 object-7)
  (on station-2 object-3)
  (on station-2 object-5-2)
  (on station-3 object-2)
  (on station-3 object-6)
  (on station-3 object-8)
  (at bot-1 station-5)
 )
 (:goal (and
  (on station-1 object-6)
  (on station-1 object-4)
  (on station-1 object-3)
  (on station-4 object-8)
  (on station-4 object-5-1)
  (on station-4 object-5-2)
  (on station-6 object-1)
  (on station-6 object-7)
  (on station-6 object-2)
 ))
)
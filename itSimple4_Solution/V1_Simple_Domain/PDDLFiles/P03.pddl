(define (problem Problem3)
    (:domain atWork_Domain_v1)
    (:objects
      s2 - Station
      o1 - Object
      o4 - Object
      o5 - Object
      o7 - Object
      o3 - Object
      o2 - Object
      o6 - Object
      o8 - Object
      s5 - Station
      s3 - Station
      initialLocation - Station
      robot1 - Robot
      s1 - Station
      s4 - Station
      s6 - Station
    )
    (:init
      (inStation o7 s2)
      (inStation o5 s2)
      (inStation o3 s2)
      (inStation o1 s5)
      (inStation o4 s5)
      (inStation o5 s5)
      (inStation o2 s3)
      (inStation o6 s3)
      (inStation o8 s3)
      (connected s5 s2)
      (connected s2 s5)
      (connected s5 s3)
      (connected s3 s5)
      (connected s3 s2)
      (connected s2 s3)
      (atStation robot1 initialLocation)
      (connected s2 initialLocation)
      (connected initialLocation s2)
      (connected s3 initialLocation)
      (connected initialLocation s3)
      (connected s5 initialLocation)
      (connected initialLocation s5)
      (connected s5 s6)
      (connected s6 s5)
      (connected initialLocation s6)
      (connected s6 initialLocation)
      (connected s3 s6)
      (connected s6 s3)
      (connected s4 s6)
      (connected s6 s4)
      (connected s2 s6)
      (connected s6 s2)
      (connected s1 s6)
      (connected s6 s1)
      (connected s1 initialLocation)
      (connected initialLocation s1)
      (connected s2 s1)
      (connected s1 s2)
      (connected s4 s1)
      (connected s1 s4)
      (connected s3 s1)
      (connected s1 s3)
      (connected s5 s1)
      (connected s1 s5)
      (connected s2 s4)
      (connected s4 s2)
      (connected initialLocation s4)
      (connected s4 initialLocation)
      (connected s3 s4)
      (connected s4 s3)
      (connected s6 s4)
      (connected s4 s6)
      (connected s5 s4)
      (connected s4 s5)
    )
    (:goal
      (and
        (inStation o6 s1)
        (inStation o3 s1)
        (inStation o4 s1)
        (inStation o8 s4)
        (inStation o5 s4)
        (inStation o5 s4)
        (inStation o1 s6)
        (inStation o2 s6)
        (inStation o7 s6)
      )
    )
)

(define (problem Problem1)
    (:domain atWork_Domain_v1)
    (:objects
      s1 - Station
      s3 - Station
      s2 - Station
      o1 - Object
      o2 - Object
      o3 - Object
      robot1 - Robot
      initialLocation - Station
    )
    (:init
      (inStation o1 s1)
      (inStation o2 s2)
      (inStation o3 s3)
      (connected s1 s2)
      (connected s2 s1)
      (connected s2 s3)
      (connected s3 s2)
      (connected s3 s1)
      (connected s1 s3)
      (atStation robot1 initialLocation)
      (connected initialLocation s1)
      (connected s1 initialLocation)
      (connected initialLocation s2)
      (connected s2 initialLocation)
      (connected initialLocation s3)
      (connected s3 initialLocation)
    )
    (:goal
      (and
        (inStation o1 s3)
        (inStation o2 s3)
        (inStation o3 s3)
      )
    )
)

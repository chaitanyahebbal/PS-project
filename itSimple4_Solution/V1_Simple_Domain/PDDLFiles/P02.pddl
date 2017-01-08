(define (problem Problem2)
    (:domain atWork_Domain_v1)
    (:objects
      o1 - Object
      o2 - Object
      o3 - Object
      o4 - Object
      initialLocation - Station
      robot1 - Robot
      s3 - Station
      s1 - Station
    )
    (:init
      (atStation robot1 initialLocation)
      (inStation o1 s3)
      (inStation o2 s3)
      (inStation o2 s3)
      (inStation o3 s3)
      (inStation o4 s3)
      (connected s1 s3)
      (connected s3 s1)
      (connected s3 initialLocation)
      (connected initialLocation s3)
      (connected s1 initialLocation)
      (connected initialLocation s1)
    )
    (:goal
      (and
        (inStation o1 s1)
        (inStation o2 s1)
        (inStation o2 s1)
        (inStation o3 s1)
        (inStation o4 s1)
      )
    )
)

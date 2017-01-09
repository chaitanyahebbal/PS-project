(define (problem Problem1)
    (:domain atWork_Domain_v3)
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
      (= (distance s1 s1) 0)
      (= (distance s1 s2) 1)
      (= (distance s1 s3) 2)
      (= (distance s1 initialLocation) 1)
      (= (distance s2 s1) 1)
      (= (distance s2 s2) 0)
      (= (distance s2 s3) 1)
      (= (distance s2 initialLocation) 2)
      (= (distance s3 s1) 2)
      (= (distance s3 s2) 1)
      (= (distance s3 s3) 0)
      (= (distance s3 initialLocation) 3)
      (= (distance initialLocation s1) 1)
      (= (distance initialLocation s2) 2)
      (= (distance initialLocation s3) 3)
      (= (distance initialLocation initialLocation) 0)
      (= (travelledDistance) 0)
      (= (robotCapacity) 3)
    )
    (:goal
      (and
        (inStation o1 s3)
        (inStation o2 s3)
        (inStation o3 s3)
      )
    )
    (:metric minimize (travelledDistance))
)

(define (problem Problem2)
    (:domain atWork_Domain_v3)
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
      (= (distance s1 s1) 0)
      (= (distance s1 s3) 2)
      (= (distance s1 initialLocation) 1)
      (= (distance s3 s1) 2)
      (= (distance s3 s3) 0)
      (= (distance s3 initialLocation) 3)
      (= (distance initialLocation s1) 1)
      (= (distance initialLocation s3) 3)
      (= (distance initialLocation initialLocation) 0)
      (= (travelledDistance) 0)
      (= (robotCapacity) 3)
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
    (:metric minimize (travelledDistance))
)

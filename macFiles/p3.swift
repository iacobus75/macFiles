//
//  p3.swift
//  concurrencia1
//
//  Created by Alejandro Garcia on 29/12/22.
//

import Foundation


    

func p3() async throws
{
   print ("Indique el nº de task a crear:")
   // let snum_tasks = readLine()
    let num_tasks = 5//Int(snum_tasks!) ?? 1
    print ("Ha indicado \(num_tasks) tareas")
    let counter = Counter ()
    var sum = 0
    await withTaskGroup(of: Int.self)
    { group in
            
            for i in 1...num_tasks
            {
                group.addTask(priority: .background)
                {
                    print ("T\(i): creada")
                    while await counter.value < 100
                    {
                        await print ("T\(i): \(counter.increment())") // 1
                        stress(seconds: (Double(1+i)))
                    }
                    return i
                }
            }
            
      
        for await result in group {
            sum += result
            print ("Finalizado task \(result)")
        }
    }
        
    //print("Task : \(sum)")
}

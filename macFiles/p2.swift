//
//  p2.swift
//  concurrencia1
//
//  Created by Alejandro Garcia on 29/12/22.
//

import Foundation

    

func p2()async throws
{
    let counter = Counter ()
    
    async let task_c1 = Task {
        while await counter.value < 100
        {
            
            await print ("T1: \(counter.increment())") // 1
            //try await Task.sleep(until: .now + .seconds(2), clock: .continuous)
            stress(seconds: 2)
        
        }
    }
    
    async let task_c2 = Task {
        while await counter.value < 100
        {
            await print ("T2: \(counter.increment())") // 1
            //try await Task.sleep(until: .now + .seconds(1), clock: .continuous)
            stress(seconds: 1)
        
        }
    }
    
    try await task_c1.value
    try await task_c2.value
}


func p2_valor(valor: Int) async -> String
{
    stress(seconds: Double(valor))
    return String(valor)
}

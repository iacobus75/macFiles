//
//  counter.swift
//  concurrencia1
//
//  Created by Alejandro Garcia on 29/12/22.
//

import Foundation


actor Counter {
    var value = 0
    
    func increment () -> Int
    {
        value = value + 1
        return value
    }
}

func stress(seconds: Double)
{
    let startDate = Date();
    var currentDate = Date();
    var i = 1.0;
   
    
    while (DateInterval(start: startDate, end: currentDate).duration < seconds)
    {
        i = i+1; //Gasta CPU
        var j = sqrt(i)
        sqrt(j)
        currentDate = Date();
    }
    

    
}

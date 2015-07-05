//
//  Utility.swift
//  internshipApp
//
//  Created by Tom Hantzmon on 7/2/15.
//  Copyright (c) 2015 Thantzmon. All rights reserved.
//

import Foundation

class Utility{
    func updateCost(var cost: Double) -> Double{
        cost = cost * 1.2
        return cost
    }
    
    func updateIncome(var amount: Double) ->String{
        income += amount
        return String(Int(round(income)))
        //incomeDisplay.text = String(Int(round(income)))
    }
    
    func updatePointsWithIncome() ->String{
        points += income
        //pointDisplay.text = String(Int(points))
        return String(Int(points))
    }
    func updatePoints(var cost: Double) -> String{
        points -= cost
        return String(Int(round(points)))
        //pointDisplay.text = String(Int(round(points)))

    }
}
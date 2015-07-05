//
//  ViewController.swift
//  internshipApp
//
//  Created by Tom Hantzmon on 6/14/15.
//  Copyright (c) 2015 Thantzmon. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var points = 0.0
    var income = 0.0
    var costOne = 20.0
    var costTwo = 150.0
    var costThree = 750.0
    var costFour = 5000.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var timer = NSTimer()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var pointDisplay: UILabel!
    @IBOutlet var incomeDisplay: UILabel!
    @IBOutlet var costOneLabel: UILabel!
    @IBOutlet var costTwoLabel: UILabel!
    @IBOutlet var costThreeLabel: UILabel!
    @IBOutlet var costFourLabel: UILabel!
    @IBOutlet var btn: UIButton!
    
    
    @IBAction func theButton(sender: UIButton) {
        points += 1
        pointDisplay.text = String(Int(points))
    }
    @IBAction func incOne(sender: UIButton) {
        if(points >= costOne){
            var incomeModifier = 1.0
            costOne = updateCost(costOne)
            incomeDisplay.text = updateIncome(incomeModifier)
            updatePoints(costOne)
            costOneLabel.text = "Cost: " + String(Int(round(costOne)))
        }
    }
    @IBAction func incTwo(sender: UIButton) {
        if(points >= costTwo){
            var incomeModifier = 1.0
            updateCost(2.0)
            costTwo = updateCost(costThree)
            incomeDisplay.text = updateIncome(incomeModifier)
            updatePoints(costTwo)
            costTwoLabel.text = "Cost: " + String(Int(round(costTwo)))
        }
    }
    @IBAction func incThree(sender: UIButton) {
        if(points >= costThree){
            var incomeModifier = 25.0
            costThree = updateCost(costThree)
            incomeDisplay.text = updateIncome(incomeModifier)
            updatePoints(costThree)
            costThreeLabel.text = "Cost: " + String(Int(round(costThree)))
        }
    }
    @IBAction func incFour(sender: UIButton) {
        if(points >= costFour){
            var incomeModifier = 100.0
            costFour = updateCost(costFour)
            incomeDisplay.text = updateIncome(incomeModifier)
            updatePoints(costFour)
            costFourLabel.text = "Cost: " + String(Int(round(costFour)))
        }
    }
    @IBAction func winButton(sender: UIButton) {
        if(points >= 1000000){
            btn.hidden = true
        }
    }
}


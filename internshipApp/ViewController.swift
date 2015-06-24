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
    
    
    
    
    func update(){
        points += income
        pointDisplay.text = String(Int(points))
    }
    
    @IBAction func theButton(sender: UIButton) {
        points += 1
        pointDisplay.text = String(Int(points))
    }
    @IBAction func incOne(sender: UIButton) {
        if(points >= costOne){
            points -= costOne
            pointDisplay.text = String(Int(points + 0.5))
            costOne *= 1.2
            income += 1.0
            incomeDisplay.text = String(Int(income + 0.5))
            costOneLabel.text = "Cost: " + String(Int(costOne + 0.5))
        }
    }
    @IBAction func incTwo(sender: UIButton) {
        if(points >= costTwo){
            points -= costTwo
            pointDisplay.text = String(Int(points + 0.5))
            costTwo *= 1.2
            income += 5.0
            incomeDisplay.text = String(Int(income + 0.5))
            costTwoLabel.text = "Cost: " + String(Int(costTwo + 0.5))
        }
    }
    @IBAction func incThree(sender: UIButton) {
        if(points >= costThree){
            points -= costThree
            pointDisplay.text = String(Int(points + 0.5))
            costThree *= 1.2
            income += 25.0
            incomeDisplay.text = String(Int(income + 0.5))
            costThreeLabel.text = "Cost: " + String(Int(costThree + 0.5))
        }
    }
    @IBAction func incFour(sender: UIButton) {
        if(points >= costFour){
            points -= costFour
            pointDisplay.text = String(Int(points + 0.5))
            costFour *= 1.2
            income += 100.0
            incomeDisplay.text = String(Int(income + 0.5))
            costFourLabel.text = "Cost: " + String(Int(costFour + 0.5))
        }
    }
    @IBAction func winButton(sender: UIButton) {
        if(points >= 1000000){
            btn.hidden = true
        }
    }
    


}


//
//  ViewController.swift
//  EggsTime
//
//  Created by Frio Anbia on 11/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var secondTimerLabel: UILabel!
    
    var secondRemaining = 60
    
    var eggsTime = [
        "Soft": 30,
        "Medium": 45,
        "Hard": 60
    ]
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        secondRemaining = eggsTime[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update(){
        if secondRemaining > 0 {
            print("\(secondRemaining) seconds.")
            secondRemaining -= 1
            secondTimerLabel.text = String(secondRemaining)
        }
    }
}

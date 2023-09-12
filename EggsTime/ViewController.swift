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
    let eggsTime = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        _ = eggsTime[hardness]!
        
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    func timeString(time: TimeInterval) -> String {
        let second = Int(time) % 60
        return String(format: "%02i", second)
    }
    
    @objc func update() {
        let time = timeString(time: TimeInterval(secondRemaining))
        secondRemaining -= 1
        secondTimerLabel.text = time
        print("\(time) seconds")
    }
    
}


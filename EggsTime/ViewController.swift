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
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! // Soft, Medium, Hard
        
        secondRemaining = eggsTime[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
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

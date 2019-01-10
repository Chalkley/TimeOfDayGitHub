//
//  ViewController.swift
//  TimeOfDayGitHub
//
//  Created by Jason Chalkley on 10/01/2019.
//  Copyright © 2019 Jason Chalkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    var greeting = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        //Detect time
        let componets = Calendar.current.dateComponents([.hour, .minute, .second], from: Date())
        guard let currentHour = componets.hour else { return }
        guard let currentMinute = componets.minute else { return }
        guard let currentSecond = componets.second else { return }
        
        if currentHour < 5 || currentHour > 18 {
            greeting = "Good evening, have you reached your goals today?"
            print ("Good evening")
            print("\(currentHour):\(currentMinute):\(currentSecond)")
        } else if currentHour < 18 || currentHour > 12 {
            greeting = "Good afternoon, hope your crushin those goals"
            print ("Good morning")
        } else {
            greeting = "Good morning, time to hustle!"
        }
        //Label
        greetingLabel.text = greeting
        greetingLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
        greetingLabel.numberOfLines = 2
        greetingLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        //Main View
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        
    }
}


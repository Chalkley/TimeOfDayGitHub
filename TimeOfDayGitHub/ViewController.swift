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
        greetingLogic()
        setupUI()
        
    }
    
    func setupUI() {
        //Label
        greetingLabel.text = greeting
        greetingLabel.font = UIFont(name: "AvenirNext-Medium", size: 20)
        greetingLabel.numberOfLines = 2
        greetingLabel.adjustsFontSizeToFitWidth = true 
        greetingLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //Main View
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        
    }
    
    func greetingLogic() {
        let date = NSDate()
        let calendar = NSCalendar.current
        let currentHour = calendar.component(.hour, from: date as Date)
        let hourInt = Int(currentHour.description)!
        
        if hourInt >= 12 && hourInt <= 16 {
            greeting = "Good Afternoon"
            print("Good afternoon")
        }
        else if hourInt >= 7 && hourInt <= 12 {
            greeting = "Good Morning"
            print("Good morning")
        }
        else if hourInt >= 16 && hourInt <= 20 {
            greeting = "Good Evening"
            print("Good evening")
        }
        else if hourInt >= 20 && hourInt <= 24 {
            greeting = "Good Night"
            print("Good night")
        }
        else if hourInt >= 0 && hourInt <= 7 {
            greeting = "Killing your goals at all hours! "
            print("Middle of the night")
        }
        
    }
}


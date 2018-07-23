//
//  ViewController.swift
//  GetMyAge
//
//  Created by Sayed Abdo on 3/31/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DataPicker: UIDatePicker!
    
    @IBOutlet weak var laDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: Any) {
        
        let currentDate = Date()
        let userDate = DataPicker.date
        let calendar = Calendar.current
        let component = calendar.dateComponents([Calendar.Component.day] , from:userDate , to: currentDate)
        let year:Int = Int(component.day!/356)
        let month:Int = Int((component.day!-(year*356))/30)
        let day:Int = Int(component.day!-((month*30)+(year*356)))

        laDisplay.text = "You're \(year) years ,\(month) months and \(day) days"
        
            }
}


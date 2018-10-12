//
//  ViewController.swift
//  dice
//
//  Created by Sayed Abdo on 10/8/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstImage : Int = 0
    var secondImage : Int = 0
    
    let diceArray = ["dice_1","dice_2-512","dice_3","dice_4-512","dice_5","dice_6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        randomDice()
    }

    func randomDice(){
    
        firstImage = Int(arc4random_uniform(6))
        secondImage = Int((arc4random_uniform(6)))
        
        
        diceImage1.image = UIImage(named: diceArray[firstImage])
        diceImage2.image = UIImage(named: diceArray[secondImage])
        
    
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomDice()
    }
}


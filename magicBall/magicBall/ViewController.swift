//
//  ViewController.swift
//  magicBall
//
//  Created by Sayed Abdo on 10/13/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballShaked: UIImageView!
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askBtnPressed(_ sender: UIButton) {
        newBallImage()
        
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ballShaked.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}


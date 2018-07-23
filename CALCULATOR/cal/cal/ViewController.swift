//
//  ViewController.swift
//  cal
//
//  Created by Sayed Abdo on 3/11/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var newOperation = true
    func AddNumberToInput(number:String){
        var textNumber = String(numberShow.text!)
        if (newOperation == true) {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber! + number
        numberShow.text! = textNumber!
    
    }
   
    @IBAction func bu0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }

    @IBAction func bu(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    
    @IBAction func bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    
    @IBAction func bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    
    @IBAction func bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    
    @IBAction func bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    
    @IBAction func bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    
    @IBAction func bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    
    @IBAction func bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    
    var op = "+"
    var number1:Double?
    
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number1 = Double (numberShow.text!)
        newOperation = true
    }
    
    @IBAction func buMulti(_ sender: Any) {
        op = "*"
        number1 = Double (numberShow.text!)
        newOperation = true
    }
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double (numberShow.text!)
        newOperation = true
    }
    
    @IBAction func buAdd(_ sender: Any) {
        op = "/"
        number1 = Double (numberShow.text!)
        newOperation = true
    }
    
    @IBAction func buMod(_ sender: Any) {
       var number1 = Double (numberShow.text!)
        number1 = number1! / 100.0
        numberShow.text = String(number1!)
        newOperation = true
    }
    
    @IBAction func buClear(_ sender: Any) {
        numberShow.text = "0"
        newOperation = true
    }
    
    @IBAction func buNeg(_ sender: Any) {
        var textNumber = String(numberShow.text!)
        if ( Int(textNumber!)! > 0){
        textNumber = "-" + textNumber!
        numberShow.text! = textNumber!
        }
        else {
        numberShow.text! = textNumber!
        }
        
    }
    @IBAction func buEqu(_ sender: Any) {
        
       var number2 = Double(numberShow.text!)
        var results:Double?
        switch op {
        case "/":
            results = number1! / number2!
        case "*":
            results = number1! * number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        number2 = 0.0
        number1 = 0.0
        numberShow.text = String(results!)
        newOperation = true
    }
    
    
    
    
}


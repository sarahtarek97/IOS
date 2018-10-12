//
//  ViewController.swift
//  updatedCalculator
//
//  Created by Sayed Abdo on 10/12/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number : Double = 0.0
    var previousNumber : Double = 0.0
    var preDefineMath = false
    var operation = 0
    var newOperation = false
    
    @IBOutlet weak var numberEntered: UILabel!
    
    @IBAction func numbersBtn(_ sender: UIButton) {
        
        if preDefineMath == true {
            numberEntered.text = String(sender.tag-1)
            previousNumber = Double(numberEntered.text!)!
            preDefineMath = false
            
        }else{
            numberEntered.text = numberEntered.text! + String(sender.tag-1)
            number = Double(numberEntered.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if numberEntered.text != "" && sender.tag != 12 && sender.tag != 19 {
            
            previousNumber = Double(numberEntered.text!)!
           
            if sender.tag == 15 {
                numberEntered.text = "/"
            }
            else if sender.tag == 16 {
                numberEntered.text = "*"
            }
            else if sender.tag == 17 {
                numberEntered.text = "-"
            }
            else if sender.tag == 18 {
                numberEntered.text = "+"
            }
            operation = sender.tag
            preDefineMath = true
        }
        else if sender.tag == 19 {
            
          /*  if operation == 13 && Int(numberEntered.text!)! > 0 {
                    numberEntered.text = String("-" + numberEntered.text!)
            }
            else if operation == 14 {
                number = Double(numberEntered.text!)! / 100.0
                numberEntered.text = String(number)
                newOperation = true
            }
 */
            if operation == 15 {
                numberEntered.text = String(number / previousNumber)
            }
            else if operation == 16 {
                numberEntered.text = String(previousNumber * number)
            }
            else if operation == 17 {
                numberEntered.text = String(previousNumber - number)
            }
            else if operation == 18 {
                
                numberEntered.text = String(previousNumber + number)
            }
        
        }
        else if sender.tag == 12 {
            numberEntered.text = ""
            previousNumber = 0
            number = 0
            operation = 0
            
        }
        
    }
   
   
     
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


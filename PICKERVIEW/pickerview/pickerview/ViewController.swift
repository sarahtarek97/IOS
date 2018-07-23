//
//  ViewController.swift
//  pickerview
//
//  Created by Sayed Abdo on 3/31/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource , UIPickerViewDelegate{

    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var ladisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerview.dataSource=self
        pickerview.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var acc = ["first","second","third","fourth"]
    var arr = ["sarah","mohamed","Ahmed","Nada"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return acc.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0 {
        return acc[row]
        }else {
        return arr[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component==0 {
            ladisplay.text = acc[row]
        }else {
        ladisplay.text = arr[row]
        }
        }
}


//
//  ViewController.swift
//  noteApp
//
//  Created by Sayed Abdo on 6/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDetails: UITextView!
    @IBOutlet weak var txtTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BuSave(_ sender: Any) {
        let newNote = MyNotes(context: context)
        newNote.title = txtTitle.text
        newNote.details = txtDetails.text
        newNote.date_save = NSDate()
        do{
        ad.saveContext()
        print("Saved")
            txtTitle.text=""
            txtDetails.text=""
        }catch{
        print("Error")
        }
    }

}


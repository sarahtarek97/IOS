//
//  ViewController.swift
//  XylphoneSound
//
//  Created by Sayed Abdo on 10/13/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController{
    var audioPlayer = AVAudioPlayer()
    let soundsArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func notePressed(_ sender: AnyObject){
        
        playSound()
        
    }
    
    func playSound(){
        
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
        
    }
    

}


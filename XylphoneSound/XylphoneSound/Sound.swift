//
//  Sound.swift
//  XylphoneSound
//
//  Created by Sayed Abdo on 10/16/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation
import AudioToolbox

class Sound {
    
    var soundEffect: SystemSoundID = 0
    init(name: String, type: String) {
        let path  = Bundle.main.path(forResource: name, ofType: type)!
        let pathURL = NSURL(fileURLWithPath: path)
        AudioServicesCreateSystemSoundID(pathURL as CFURL, &soundEffect)
    }
    
    func play() {
        AudioServicesPlaySystemSound(soundEffect)
    }
}


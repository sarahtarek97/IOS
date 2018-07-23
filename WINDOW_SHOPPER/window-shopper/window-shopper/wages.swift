//
//  wages.swift
//  window-shopper
//
//  Created by Sayed Abdo on 7/22/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation

class Wage{

    class func getHours(forWage wage:Double ,andPrice price:Double) -> Int{
    
        return Int(ceil(price/wage))
    
    }
}

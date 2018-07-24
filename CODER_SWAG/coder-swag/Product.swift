//
//  Product.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/24/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title:String
    private(set) public var price:String
    private(set) public var imageName:String
    
    init(title:String,price:String,imageName:String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }

}

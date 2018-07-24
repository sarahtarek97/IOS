//
//  Category.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title:String,imageName:String) {
        self.title = title
        self.imageName = imageName
    }
    
}

//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Sayed Abdo on 7/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryLabel : UILabel!
    
    func updateViews(category:Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    
    
    }
}

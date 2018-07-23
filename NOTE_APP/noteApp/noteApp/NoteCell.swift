//
//  NoteCell.swift
//  noteApp
//
//  Created by Sayed Abdo on 6/23/18.
//  Copyright © 2018 Sayed Abdo. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    
    
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var tDetails: UITextView!
    @IBOutlet weak var tTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func SetCell (note:MyNotes) {
        tTitle.text = note.title
        tDetails.text = note.details
        
        dateTime.text = note.date_save as? String
    }

}

//
//  NoteCell.swift
//  note2self
//
//  Created by Sain-R Edwards on 1/15/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class NoteCell: UITableViewCell {

    @IBOutlet weak var noteImage: UIImageView!
    @IBOutlet weak var noteTitle: UILabel!
    
    func updateCell(note: Note) {
        noteTitle.text = note.title
        noteImage.image = UIImage(named: note.image)
    }

}

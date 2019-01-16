//
//  Note.swift
//  note2self
//
//  Created by Sain-R Edwards on 1/15/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import Foundation

struct Note {
    
    private(set) public var image: String
    private(set) public var title: String
    
    init(title: String, image: String) {
        self.image = image
        self.title = title
    }
    
}

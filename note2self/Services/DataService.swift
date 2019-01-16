//
//  DataService.swift
//  note2self
//
//  Created by Sain-R Edwards on 1/15/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import Foundation

struct DataService {
    
    static let instance = DataService()
    
    private let notes = [
    
        Note(title: "WHAT'S DOPE", image: "dope-layer"),
        Note(title: "WHAT NEEDS WORK", image: "work-layer"),
        Note(title: "DAILY TASKS", image: "tasks-layer"),
        Note(title: "SPEAK INTO EXISTENCE", image: "speak-layer"),
        Note(title: "IDEAS", image: "ideas-layer")
        
    ]
    
    func getNotes() -> [Note] {
        return notes
    }
    
}

//
//  Note2SelfVC.swift
//  note2self
//
//  Created by Sain-R Edwards on 1/15/19.
//  Copyright © 2019 Swift Koding 4 Everyone. All rights reserved.
//

import UIKit

class Note2SelfVC: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
    }

}

extension Note2SelfVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getNotes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: NOTE_CELL, for: indexPath) as? NoteCell {
            let note = DataService.instance.getNotes()[indexPath.row]
            cell.updateCell(note: note)
            return cell
        } else {
            return NoteCell()
        }
    }
    
}

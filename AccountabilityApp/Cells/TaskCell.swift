//
//  TaskCell.swift
//  AccountabilityApp
//
//  Created by Amine Badraoui on 2020-11-21.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskName: UILabel!
    
    func configure(with name: String) {
        self.taskName.text = name
    }
}

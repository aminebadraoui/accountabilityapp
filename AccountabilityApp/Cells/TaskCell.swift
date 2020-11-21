//
//  TaskCell.swift
//  AccountabilityApp
//
//  Created by Amine Badraoui on 2020-11-21.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskName: UILabel!
    @IBOutlet weak var checkBtn: UIButton!
    
    private var isTaskSelected: Bool = false
    
    func configure(with name: String) {
        self.taskName.text = name
        
        checkBtn.setTitle("  ", for: .normal)
        checkBtn.layer.borderWidth = 2.0
        checkBtn.layer.borderColor = UIColor.black.cgColor
        checkBtn.layer.cornerRadius = checkBtn.layer.bounds.width/2
    }
    
    func toggleSelection() {
        isTaskSelected = !isTaskSelected
        checkBtn.backgroundColor = isTaskSelected ? .blue : .clear
    }
}

//
//  ViewController.swift
//  AccountabilityApp
//
//  Created by Amine Badraoui on 2020-11-20.
//

import UIKit

enum Row {
    case firstName, lastName, bio
}

class TaskListSelectionVC: UIViewController {
    @IBOutlet weak var taskListTableView: UITableView!
    
    var tasks = ["Wake up by 8", "Study", "Workout", "Skill Work", "Mobility", "No Fap"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .cyan
        
        setupTableView()
    }
    
    private func setupTableView() {
        self.taskListTableView.backgroundColor = .clear
        self.taskListTableView.delegate = self
        self.taskListTableView.dataSource = self
    }
}

// MARK: TableView Setup

extension TaskListSelectionVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as? TaskCell {
            let taskName = tasks[indexPath.row]
            cell.configure(with: taskName)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? TaskCell {
            cell.toggleSelection()
        }
    }
}


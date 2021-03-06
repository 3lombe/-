//
//  SwipeTableViewController.swift
//  LombsList
//
//  Created by Nsonsa Elombe Kisala Jr. on 6/22/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit
import SwipeCellKit
import Realm

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    
    // MARK: - Properties
    
    let identifier : String = "Cell"
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 69
        tableView.separatorStyle = .none
    }
    
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            self.updateModel(at: indexPath)
        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "trash")
        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
        // Update data model
    }
    
}

//
//  ContactViewController.swift
//  PersonsList
//
//  Created by DARYA on 6/26/23.
//

import UIKit

class GeneralContactListViewController: UITableViewController {
    
    var dataManager = DataManager()
    var contact: [Person] = []
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contact[indexPath.row]
        
        content.text = person.name + " " + person.surname
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailVC.person = contact[indexPath.row]
        }
    }
}

//
//  SectionListViewController.swift
//  PersonsList
//
//  Created by DARYA on 6/28/23.
//

import UIKit

class SectionListViewController: UITableViewController {
    
    var dataManager = DataManager()
    var contact: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contact.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contact[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = contact[section]
        return person.name + " " + person.surname
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let colorHeader = view as! UITableViewHeaderFooterView
        colorHeader.tintColor = UIColor.gray
        colorHeader.textLabel?.textColor = .white
    }
}

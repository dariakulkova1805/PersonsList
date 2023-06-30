//
//  ContactDetailsViewController.swift
//  PersonsList
//
//  Created by DARYA on 6/28/23.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.name + " " + person.surname
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
}


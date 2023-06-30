//
//  StarttTabBarController.swift
//  PersonsList
//
//  Created by DARYA on 6/29/23.
//

import UIKit

class StartTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectViewController()
    }
    
    func selectViewController() {
        guard let sectionListVC = viewControllers?.first as? SectionListViewController else { return }
        guard let generalContactVC = viewControllers?.last as? GeneralContactListViewController else { return }
        
        let contact = DataManager().getContact(count: 10)
        generalContactVC.contact = contact
        sectionListVC.contact = contact
    }
}


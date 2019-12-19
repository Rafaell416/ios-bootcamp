//
//  PeopleListViewController.swift
//  PeopleList
//
//  Created by koombea on 19/12/19.
//  Copyright © 2019 koombea. All rights reserved.
//

import UIKit

class PeopleListViewController: UIViewController {
    
    var contacts: [Contact] = []

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        counterLabel.text = String(contacts.count)
    }

}

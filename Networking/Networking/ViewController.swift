//
//  ViewController.swift
//  Networking
//
//  Created by koombea on 19/12/19.
//  Copyright © 2019 koombea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func get() {
        guard let url = URL(string: "\(Config.baseURL)/users") else { return }
    }

}


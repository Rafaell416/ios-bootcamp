//
//  PeopleListViewControllerDelegate.swift
//  PeopleList
//
//  Created by koombea on 19/12/19.
//  Copyright © 2019 koombea. All rights reserved.
//

import UIKit

extension PeopleListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContactTableViewCell = tableView.dequeueReusableCell(withIdentifier: "contactTableViewCell", for: indexPath) as! ContactTableViewCell
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.phoneLabel.text = contacts[indexPath.row].phone
        return cell
    }
    
    
}

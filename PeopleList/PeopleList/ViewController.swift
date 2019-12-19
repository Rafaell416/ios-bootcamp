//
//  ViewController.swift
//  PeopleList
//
//  Created by koombea on 19/12/19.
//  Copyright © 2019 koombea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactactsCounterLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTappedButton(_ sender: Any) {
        
        // Se puede hacer en un solo guard separado por comas. (let x, let y)
      //  guard let name = nameField.text else { return }
       // guard let phone = phoneField.text else { return }
        
        guard let name = nameField.text, let phone = phoneField.text else { return }
        
        if name.isEmpty || phone.isEmpty {
            executeAlert(title: "Error", message: "You have to fill all inputs to add a contact")
            return
        }
        
        let contact = Contact(name: name, phone: phone)
        contacts.append(contact)
        contactactsCounterLabel.text = String(contacts.count)
        
        nameField.text = ""
        phoneField.text = ""
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if contacts.count == 0 {
            executeAlert(title: "Error", message: "You should add at least one contact to see the list")
            return
        }
        
        if segue.identifier == "peopleList" {
            guard let destinationVC = segue.destination as? PeopleListViewController else { return }
            destinationVC.contacts = contacts
        }
    }
    
    func executeAlert (title: String, message: String) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }


}


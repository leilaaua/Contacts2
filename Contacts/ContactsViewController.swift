//
//  ContactsViewController.swift
//  Contacts
//
//  Created by leila's mac on 26.04.2022.
//

import UIKit

enum Contacts: String {
    case contacts
    case dublicateNumber
    case dublicateName
    case noName
    case noNumber
    case noEmail
    
    
}

class ContactsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     
            
        }

        return cell
    }
}





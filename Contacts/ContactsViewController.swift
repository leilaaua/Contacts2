//
//  ContactsViewController.swift
//  Contacts
//
//  Created by leila's mac on 27.04.2022.
//

import UIKit

let contacts = Contact.getSortedList()
let categories = ["Все контакты", "Дубликаты номеров", "Повторяющиеся имена", "Без имени", "Без номера", "Нет электронной почты"]

class ContactsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        let contacts = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = categories[indexPath.row]
        content.secondaryText =
    
     
        cell.contentConfiguration = content

        return cell
    }
}
   
   

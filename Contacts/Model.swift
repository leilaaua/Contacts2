//
//  Model.swift
//  Contacts
//
//  Created by leila's mac on 26.04.2022.
//

import Foundation

struct Contact {
    var name: String?
    var number: String?
    var email: String?
    
    static func getContactList() -> [Contact] {
        
        [
            Contact(name: "John", number: "0555557777", email: "aaron@icloud.com"),
            Contact(name: "John", number: "0453475386", email: "tim@icloud.com"),
            Contact(name: "Ted", number: "0555557777", email: "ted@icloud.com"),
            Contact(name: nil, number: "2748495937", email:  "steven@icloud.com"),
            Contact(name: "Tim", number: nil, email: "john@icloud.com"),
            Contact(name: "Steven", number: "3564756476", email: nil)
        ]
    }
    
    static func getSortedList() -> [[Contact]] {
        let contacts = Contact.getContactList()
        var dublicateNumber: [Contact] = []
        let numbers = contacts.map { $0.number }
        
        for contact in contacts {
            for _ in numbers {
                if contact.number == contact.number{
                    dublicateNumber.append(contact)
                    print(dublicateNumber)
                }
            }
        }
        
        
        var dublicateName : [Contact] = []
        for contact in contacts {
            for _ in numbers {
                if contact.name == contact.name{
                    dublicateName.append(contact)
                }
            }
        }
        
        var noName: [Contact] = []
        for contact in contacts {
            for _ in numbers {
                if contact.name == nil{
                    noName.append(contact)
                }
            }
        }
        
        var noNumber: [Contact] = []
        for contact in contacts {
            for _ in numbers {
                if contact.number == nil{
                    noNumber.append(contact)
                }
            }
        }
        
        var noEmail: [Contact] = []
        for contact in contacts {
            for _ in numbers {
                if contact.email == nil{
                    noEmail.append(contact)
                    
                }
            }
        }
        
        let sortedContacts = [dublicateName,dublicateNumber,noName,noEmail,noNumber]
        return sortedContacts
   
    }
}

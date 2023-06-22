//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import Foundation


struct Person: Identifiable {
    
    var id: Int
    let name: String
    let surname: String
    let phone: String
    let mail: String
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getContact() -> Person {
     
        
        let id = DataStore.shared.id.randomElement() ?? 1
        let surname = DataStore.shared.surnames.randomElement() ?? "Pol"
        let name = DataStore.shared.names.randomElement() ?? "Alex"
        let phone = DataStore.shared.phones.randomElement() ?? "009"
        let mail = DataStore.shared.phones.randomElement() ?? "999999"
        
        return Person(id: id, name: name, surname: surname, phone: phone, mail: mail)
    }
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let mails = DataStore.shared.mails.shuffled()
        let id = DataStore.shared.id
        
        (0...9).forEach { index in
            persons.append(
                Person(
                    id: id[index],
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    mail: mails[index]
                )
            )
        }
    
        return persons
    }
}

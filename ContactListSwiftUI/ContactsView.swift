//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(
                    destination: ContactDetailsView(contact: contact)
                ) {
                    HStack {
                        Text("\(contact.name)")
                        Text("\(contact.surname)")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getContactList())
    }
}

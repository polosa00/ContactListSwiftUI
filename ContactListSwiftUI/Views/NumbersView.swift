//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct NumbersView: View {
    
    @State private var singleSelection: String?
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(contacts) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        Label(contact.phone, systemImage: "phone")
                        Label(contact.mail, systemImage: "tray")
                    }
                }
            }

            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}

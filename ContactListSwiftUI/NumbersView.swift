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
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(contact.phone)")
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                            Text("\(contact.mail)")
                        }
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

//
//  SwiftUIView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct SwiftUIView: View {
    
    let contacts: [Person]
    
    @State private var singleSelection: UUID?
    
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
            .listStyle(.plain)
            .navigationTitle("Contact List")
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(contacts: Person.getContactList())
    }
}

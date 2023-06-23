//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct ContactDetailsView: View {
    private let contact = PersonViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 150, height: 150)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("\(contact.contact.phone)")
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text("\(contact.contact.mail)")
                    }
                }
            }
            .navigationTitle(contact.contact.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView()
    }
}


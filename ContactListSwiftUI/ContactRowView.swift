//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct ContactRowView: View {
    
    let contact: Person
    
    var body: some View {
        HStack {
            Text("\(contact.name) \(contact.surname)")
        }
    
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: Person.getContact())
    }
}

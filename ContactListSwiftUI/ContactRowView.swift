//
//  ContactRowView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct ContactRowView: View {
    private let contact = PersonViewModel()
    
    var body: some View {
        HStack {
            Text("\(contact.contact.name) \(contact.contact.surname)")
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView()
    }
}

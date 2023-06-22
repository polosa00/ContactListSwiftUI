//
//  ContactViewModel.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

final class ContactViewModel: ObservableObject {
    @Published var contacts = Person.getContactList()
    
    
}

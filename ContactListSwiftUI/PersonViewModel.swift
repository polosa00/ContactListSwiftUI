//
//  PersonViewModel.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

final class PersonViewModel: ObservableObject {
    let contacts = Person.getContactList()
    let contact = Person.getContact()
}

//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Александр Полочанин on 22.06.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var person = PersonViewModel()
   
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getListPersons()
    
    var body: some View {
        TabView {
            UsersList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            UsersNumbers(persons: persons)
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

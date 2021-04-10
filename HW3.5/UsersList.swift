//
//  UsersList.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

import SwiftUI

struct UsersList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.firstName) { person in
                NavigationLink(destination: UserProfile(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct UsersList_Previews: PreviewProvider {
    static var previews: some View {
        UsersList(persons: Person.getListPersons())
    }
}

//
//  UsersNumbers.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

import SwiftUI

struct UsersNumbers: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.firstName) { person in
                    Section(header: Text("\(person.fullName)")) {
                        ContactRow(imageName: "phone", textToShow: "\(person.phone)")
                        ContactRow(imageName: "tray", textToShow: "\(person.mail)")
                    }
                }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct UsersNumbers_Previews: PreviewProvider {
    static var previews: some View {
        UsersNumbers(persons: Person.getListPersons())
    }
}

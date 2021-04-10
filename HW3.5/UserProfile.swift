//
//  UserProfile.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

import SwiftUI

struct UserProfile: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text("\(person.fullName)")
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 30)
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
                .opacity(0.5)
            
            ContactRow(imageName: "phone", textToShow: "\(person.phone)")
            ContactRow(imageName: "tray", textToShow: "\(person.mail)")
            Spacer()
        }
        .frame(alignment: .leading)
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(person: Person.getListPersons()[0])
    }
}

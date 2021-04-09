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
        VStack(spacing:20) {
            Text("\(person.fullName)")
                .font(.system(size: 40))
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(x: 30)
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                    .frame(width: 50, alignment: .leading)
                Text("\(person.phone)")
            }
            .font(.system(size: 20))
            .frame(maxWidth: .infinity, alignment: .leading)
            .offset(x: 30)
            
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                    .frame(width: 50, alignment: .leading)
                Text("\(person.mail)")
            }
            .font(.system(size: 20))
            .frame(maxWidth: .infinity, alignment: .leading)
            .offset(x: 30)
            Spacer()
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile(person: Person.getListPersons()[0])
    }
}

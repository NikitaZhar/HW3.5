//
//  ContactRow.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

import SwiftUI

struct ContactRow: View {
    
    let imageName: String
    let textToShow: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
                .frame(width: 50, alignment: .leading)
            Text("\(textToShow)")
        }
        .font(.system(size: 20))
        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
        .offset(x: 30)
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(imageName: "", textToShow: "")
    }
}

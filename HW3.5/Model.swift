//
//  Model.swift
//  ContactsList
//
//  Created by Nikita Zharinov on 16/02/2021.
//

struct Person {
    let firstName: String
    let surName: String
    let mail: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(surName)"
    }
}
    
extension Person {
    static func getListPersons() -> [Person]{
        var randomList: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surNames = DataManager.shared.surNames.shuffled()
        let mails = DataManager.shared.mails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person (
                firstName: names[index],
                surName: surNames[index],
                mail: mails[index],
                phone: phones[index]
            )
            randomList.append(person)
        }
        return randomList
    }
}



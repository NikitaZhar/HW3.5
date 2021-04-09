//
//  DataManager.swift
//  HW3.5
//
//  Created by Nikita Zharinov on 09/04/2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    var names = [
        "Bruce", "John", "Steven", "Aaron", "Tim",
        "Alan", "Sharon", "Ted", "Carl", "Nicola"
    ]
    var surNames = [
        "Butler", "Smith", "Black", "Robertson", "Murfy",
        "Williams", "Isaacson", "Jankin", "Penyworth", "Dow"
    ]
    var mails = [
        "aaa.aaa@mail.ru", "bbb.bbb@mail.ru",
        "ccc.ccc@mail.ru", "ddd.ddd@mail.ru",
        "eee.eee@mail.ru", "fff.fff@mail.ru",
        "ggg.ggg@mail.ru", "hhh.hhh@mail.ru",
        "iii.iii@mail.ru", "kkk.kkk@mail.ru"
    ]
    var phones = [
        "11111111", "22222222", "33333333", "44444444",
        "55555555", "66666666", "77777777", "99999999",
        "88888888", "10203040"
    ]
    
    private init() {}
}

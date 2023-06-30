//
//  Person.swift
//  PersonsList
//
//  Created by DARYA on 6/26/23.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
}

class DataManager {
    
    let names = ["Gary", "Donald", "Eric", "Curtis", "Charles", "Gerald", "Stephen", "Gary", "James", "Robert"]
    let surnames = ["Walters", "Gross", "Wallace", "Wood", "Hall", "Chavez", "Wells", "Morgan", "Scott", "Robinson"]
    let emails = ["10@mail.ru", "11@mail.ru", "12@mail.ru", "13@mail.ru", "14@mail.ru", "15@mail.ru", "16@mail.ru", "17@mail.ru", "18@mail.ru", "19@mail.ru"]
    let phoneNumbers = ["11111", "22222", "33333", "44444", "55555", "66666", "77777", "88888", "99999", "10101"]
    
    func getRandomPerson() -> Person {
        
        let name = names.shuffled().first ?? ""
        let surname = surnames.shuffled().first ?? ""
        let email = emails.shuffled().first ?? ""
        let phoneNumber = phoneNumbers.shuffled().first ?? ""
        
        return Person(name: name, surname: surname, email: email, phoneNumber: phoneNumber)
    }
    
    func getContact(count: Int) -> [Person] {
        var contact = [Person]()
        
        for _ in 0..<count {
            var person = getRandomPerson()
            while contact.contains(where: { $0.email == person.email || $0.phoneNumber == person.phoneNumber}) {
                person = getRandomPerson()
            }
            contact.append(person)
        }
        return contact
    }
}




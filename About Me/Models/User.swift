//
//  User.swift
//  About Me
//
//  Created by Алексей Попов on 13.02.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        
        User(
            login: "User",
            password: "11",
            person: Person(
                name: "Алексей",
                surname: "Попов",
                company: "Научно Производственное Предприятие Агрофарм",
                department: "Логистики",
                jobTitle: "Логистик",
                biography: "Я люблю слушать музыку, читать книги и варить пиво!"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let jobTitle: String
    let biography: String
}

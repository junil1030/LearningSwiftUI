//
//  User.swift
//  NetflixClone
//
//  Created by 서준일 on 4/7/25.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Double
    let weight: Double
    
    static var mock: User {
        User(
            id: 444,
            firstName: "Nick",
            lastName: "Sarno",
            age: 76,
            email: "hi@hi.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 180,
            weight: 200
        )
    }
}

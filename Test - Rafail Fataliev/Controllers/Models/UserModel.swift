//
//  UserModel.swift
//  Test - Rafail Fataliev
//
//  Created by Рафаил Фаталиев on 08.06.2022.
//

import Foundation

struct User: Codable {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    let password: String
    let age: Date
}

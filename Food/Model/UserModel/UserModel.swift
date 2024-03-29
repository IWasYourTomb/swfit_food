//
//  UserModel.swift
//  Food
//
//  Created by matvey on 29.03.2024.
//

import Foundation

struct UserModel: Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}

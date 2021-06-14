//
//  User.swift
//  Appetizers
//
//  Created by joao camargo on 13/06/21.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}

//
//  Person.swift
//  ContactListSwiftUIAndUIKit
//
//  Created by Екатерина Боровкова on 10.08.2021.
//

import Foundation

struct Person: Hashable {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}


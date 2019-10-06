//
//  Person.swift
//  HW2.6.1
//
//  Created by Artem Grebenkin on 10/5/19.
//  Copyright © 2019 Artem Grebenkin. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    var fullName: String {
        name + " " + surname
    }
    var contacts: [String] {
        [email, phone]
    }
}

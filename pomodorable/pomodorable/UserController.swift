//
//  UserController.swift
//  pomodorable
//
//  Created by Peiyao Chen on 2017-11-26.
//  Copyright © 2017 Peiyao Chen. All rights reserved.
//

import Foundation

class UserController{
    let user : User?
    
    init() {
        user = User(name: "bob", email: "bob")
    }
    
    func loginUser(email: String?, password: String?) {
        FirebaseCalls.loginUser(email: email!, password: password!)
    }
    func createUser(email: String?, password: String?) {
        FirebaseCalls.createUser(email: email!, password: password!)
    }
}

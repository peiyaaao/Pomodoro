//
//  User.swift
//  pomodorable
//
//  Created by Peiyao Chen on 2017-11-26.
//  Copyright © 2017 Peiyao Chen. All rights reserved.
//

import Foundation

class User {
    let firstName : String?
    let email : String?
    static var pomodoros = [Pomodoro]()
    
    init(name: String?, email: String?){
        self.firstName = name!
        self.email = email!
    }
}

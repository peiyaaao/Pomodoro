//
//  FirebaseCalls.swift
//  pomodorable
//
//  Created by Peiyao Chen on 2017-11-26.
//  Copyright © 2017 Peiyao Chen. All rights reserved.
//

import Foundation
import FirebaseAuth

class FirebaseCalls {
    //Fxn that reads data
    //Fxn that writes data
    //Fxn that creates users
    static func createUser(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password, completion: {
        (user, error) in
            if(user != nil){
                print(user!)
            } else {
                print(error!)
            }
        })
    }
    static func loginUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password, completion: {
        (user, error) in
            if(user != nil){
                print(user!)
            } else {
                print(error!)
            }
        })
    }
    static func logoutUser() {
        do {
            try Auth.auth().signOut()
        } catch _ as NSError {
            print("fuck");
        }
    }
}

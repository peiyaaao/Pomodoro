//
//  LoginViewController.swift
//  pomodorable
//
//  Created by Peiyao Chen on 2017-11-14.
//  Copyright © 2017 Peiyao Chen. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField?
    @IBOutlet weak var password: UITextField?
    
    let login: UserController = UserController()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        email?.delegate = self
        password?.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginTouch(_ sender: UIButton) {
        self.login.loginUser(email: email!.text, password: password!.text)
    }
    @IBAction func signUpTouch (_ sender: UIButton) {
        self.createRegisterAlert()
    }

}

extension LoginViewController {
    private func createRegisterAlert() {
        let alertController = UIAlertController(title: "Register",
        message: "Register", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {alert in
            let email = alertController.textFields![0] as UITextField
            let password = alertController.textFields![1] as UITextField
            self.login.createUser(email: email.text, password: password.text)
        })

        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: {alert -> Void in })

        alertController.addTextField(configurationHandler: {textemail in
            textemail.placeholder = "email"
        })

        alertController.addTextField(configurationHandler: {textpassword in
            textpassword.placeholder = "password"
        })

        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
    }
}

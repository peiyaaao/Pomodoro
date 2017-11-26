//
//  LoginViewController.swift
//  pomodorable
//
//  Created by Peiyao Chen on 2017-11-14.
//  Copyright © 2017 Peiyao Chen. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var signupButton : UIButton?
    
    
    @IBAction func signUpTouch (_ sender: UIButton) {
       self.createRegisterAlert()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension LoginViewController {
    private func createRegisterAlert() {
        let alertController = UIAlertController(title: "Register",
        message: "Register", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {alert in
            let email = alertController.textFields![0] as UITextField
            let password = alertController.textFields![1] as UITextField
            //call fxn to register users
        })

        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: {alert -> Void in })

        alertController.addTextField(textemail in
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

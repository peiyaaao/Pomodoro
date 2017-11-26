//
//  TimerViewController.swift
//  
//
//  Created by Peiyao Chen on 2017-11-14.
//

import UIKit
import FirebaseAuth

class TimerViewController: UIViewController {
    
    var authenticated: AuthStateDidChangeListenerHandle?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        authenticated = Auth.auth().addStateDidChangeListener{(auth, user) in

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(authenticated!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

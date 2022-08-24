//
//  LoginViewController.swift
//  ChatApp
//
//  Created by Willy Sato on 2022/08/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    override func viewDidLoad() {
        navigationItem.title = "Login"
        emailTextField.placeholder = "Email"
        passworldTextField.placeholder = "Passworld"
        passworldTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let email = emailTextField.text
        let password = passworldTextField.text
        
        if let email = email, let password = password {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard error == nil else {
                    return
                }
                self.performSegue(withIdentifier: "loginToMessage", sender: self)
            }
        }

        
    }
}

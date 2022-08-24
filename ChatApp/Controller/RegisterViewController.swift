//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Willy Sato on 2022/08/23.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    
    override func viewDidLoad() {
        navigationItem.title = "Register"
        emailTextField.placeholder = "Email"
        passworldTextField.placeholder = "Passworld"
        passworldTextField.isSecureTextEntry = true
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        let email = emailTextField.text
        let password = passworldTextField.text
        
        if let email = email, let password = password {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                guard error == nil else {
                    self.passworldTextField.placeholder = error?.localizedDescription
                    return
                }
                self.performSegue(withIdentifier: "registerToMessage", sender: self)
            }
        }
    }
}

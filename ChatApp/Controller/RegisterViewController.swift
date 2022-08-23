//
//  RegisterViewController.swift
//  ChatApp
//
//  Created by Willy Sato on 2022/08/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passworldTextField: UITextField!
    
    override func viewDidLoad() {
        navigationItem.title = "Register"
        emailTextField.placeholder = "Email"
        passworldTextField.placeholder = "Passworld"
        passworldTextField.isSecureTextEntry = true
    }
}

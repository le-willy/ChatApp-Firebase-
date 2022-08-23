//
//  WelcomeViewController.swift
//  ChatApp
//
//  Created by Willy Sato on 2022/08/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        titleLabel.text = ""
        var seconds = 0.0
        let chatTitle = "Chat App"
        
        for text in chatTitle {
            Timer.scheduledTimer(withTimeInterval: 0.2 * seconds, repeats: false) { timer in
                self.titleLabel.text?.append(text)
            }
            seconds += 1.0
        }
    }
}

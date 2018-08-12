//
//  LoginViewController.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var tfUsername: UITextField!
    @IBOutlet var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func doLogin(_ sender: UIButton) {
        guard let username = tfUsername.text else {
            AlertUtil.showError(controller: self, message: "Please fill the username and password")
            return
        }
        guard let password = tfPassword.text else {
            AlertUtil.showError(controller: self, message: "Please fill the username and password")
            return
        }
        
        if !username.isEmpty || !password.isEmpty {
            CacheManager.shared.saveUser(name: username)
            Switcher.loggedIn()
        } else {
            AlertUtil.showError(controller: self, message: "Please fill the username and password")
        }
    }
    
}

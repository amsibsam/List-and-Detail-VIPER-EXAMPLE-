//
//  HomeViewController.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doLogout(_ sender: UIButton) {
        logout()
    }
    
    @IBAction func goToFruit(_ sender: UIButton) {
        let fruitListVC = FruitListRouter.createModule()
        self.navigationController?.pushViewController(fruitListVC, animated: true)
    }
    private func logout() {
        CacheManager.shared.clear()
        Switcher.loggedOut()
    }
}

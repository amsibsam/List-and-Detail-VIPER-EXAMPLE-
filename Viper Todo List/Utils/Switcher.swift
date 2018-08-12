//
//  Switcher.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import UIKit

class Switcher {
    static func loggedIn() {
        let rootVC = AppStoryBoard.Home.instance.instantiateInitialViewController()
        
        AppDelegate.shared.window?.rootViewController = rootVC
    }
    
    static func loggedOut() {
        let rootVC = AppStoryBoard.Main.instance.instantiateInitialViewController()
        
        AppDelegate.shared.window?.rootViewController = rootVC
    }
}

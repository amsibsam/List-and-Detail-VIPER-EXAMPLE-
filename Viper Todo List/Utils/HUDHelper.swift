//
//  HUDManager.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 10/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import PKHUD

class HUDHelper {
    static func showLoading() {
        HUD.show(.label("Please Wait.."))
    }
    
    static func showError(message: String) {
        HUD.show(.labeledError(title: "Error", subtitle: message))
    }
    
    static func hide() {
        HUD.hide()
    }
}

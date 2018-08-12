//
//  AlertUtil.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import UIKit

class AlertUtil {
    static func showError(controller: UIViewController, message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(closeAction)
        controller.present(alert, animated: true, completion: nil)
    }
}

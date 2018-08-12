//
//  Fruit.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation

class Fruit {
    let name: String
    let vitamin: String
    var imageAvatar: URL?
    var description: String = "-"
    
    init(name: String, vitamin: String) {
        self.name = name
        self.vitamin = vitamin
    }
}

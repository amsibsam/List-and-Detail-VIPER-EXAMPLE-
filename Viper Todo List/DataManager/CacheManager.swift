//
//  CacheManager.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation

class CacheManager {
    public static let shared: CacheManager = CacheManager()
    private let preference: UserDefaults = UserDefaults.standard
    
    func saveUser(name: String) {
        preference.set(name, forKey: "name")
    }
    
    func getName() -> String? {
        return preference.string(forKey: "name")
    }
    
    func clear() {
        if let bundleIdentifier = Bundle.main.bundleIdentifier {
            preference.removePersistentDomain(forName: bundleIdentifier)
            preference.synchronize()
        }
    }
}

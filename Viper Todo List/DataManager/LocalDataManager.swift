//
//  LocalDataManager.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 10/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation

class LocalDataManger {
    static let shared: LocalDataManger = LocalDataManger()
    
    private init() { }
    
    func getFruitList(completion: @escaping ([Fruit]) -> Void) {
        DispatchQueue.global(qos: .background).async {
            let fruitList = self.generateFruitList()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                completion(fruitList)
            })
        }
    }
    
    private func generateFruitList() -> [Fruit] {
        var fruitPict = [
            "https://www.wcrf-uk.org/sites/default/files/Apple_A-Z%20Fruit1.jpg",
            "http://upload.wikimedia.org/wikipedia/commons/d/de/FraiseFruitPhoto.jpg",
            "https://static.meijer.com/Media/000/00000/0000000040532_a1c1_0200.pnghttps://static.meijer.com/Media/000/00000/0000000040532_a1c1_0200.png",
            "https://static.meijer.com/Media/000/00000/0000000004273_0_A1C1_0200.png",
            "https://static.meijer.com/Media/000/00009/0000000940115_a1c1_0200.png",
            "https://static.meijer.com/Media/000/00000/0000000040303_a1c1_0200.png",
            "https://static.meijer.com/Media/000/00000/0000000040327_a1c1_0200.png",
        ]
        var fruitList = [Fruit]()
        for i in 1...10 {
            let fruit = Fruit(name: "fruit \(i)", vitamin: "B\(i)")
            fruit.description = "This is fruit description sample"
            if i <= fruitPict.count {
                if let validUrl = URL(string: fruitPict[i - 1]) {
                    fruit.imageAvatar = validUrl
                }
            }
            
            fruitList.append(fruit)
        }
        
        return fruitList
    }
}

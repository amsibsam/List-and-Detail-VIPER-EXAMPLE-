//
//  FruitCell.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 10/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import UIKit

class FruitCell: UITableViewCell {
    @IBOutlet var ivFruitPict: UIImageView!
    @IBOutlet var lbFruitName: UILabel!
    @IBOutlet var lbVitamin: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindDataToView(fruit: Fruit) {
        lbFruitName.text = fruit.name
        lbVitamin.text = fruit.vitamin
        
        if let fruitImage = fruit.imageAvatar {
            ivFruitPict.clipsToBounds = true
            AFImageHelper.loadImage(with: fruitImage, to: ivFruitPict)
        }
    }
    
}

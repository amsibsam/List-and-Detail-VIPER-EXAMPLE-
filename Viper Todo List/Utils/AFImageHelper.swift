//
//  AFImageHelper.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 10/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import AlamofireImage

class AFImageHelper {
    static func loadImage(with url: URL, to imageView: UIImageView) {
        imageView.af_setImage(withURL: url)
    }
}

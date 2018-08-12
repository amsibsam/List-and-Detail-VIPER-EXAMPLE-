//
//  BaseProtocol.swift
//  Viper Todo List
//
//  Created by MTMAC16 on 09/08/18.
//  Copyright © 2018 bism. All rights reserved.
//

import Foundation
import UIKit
//MARK: Wireframe -
protocol BaseWireframeProtocol: class {

}
//MARK: Presenter -
protocol BasePresenterProtocol: class {
    
}

//MARK: Interactor -
protocol BaseInteractorOutputProtocol: class {
    
    /* Interactor -> Presenter */
    func onError(with message: String)
}

protocol BaseInteractorInputProtocol: class {
    
    /* Presenter -> Interactor */
}

//MARK: View -
protocol BaseViewProtocol: class {
    
    /* Presenter -> ViewController */
    func showLoading()
    func showError(message: String)
    func dismissLoading()
    
}

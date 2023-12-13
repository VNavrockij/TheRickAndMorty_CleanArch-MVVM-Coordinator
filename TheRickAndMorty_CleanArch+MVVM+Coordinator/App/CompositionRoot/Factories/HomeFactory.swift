//
//  HomeFactory.swift
//  TheRickAndMorty_CleanArch+MVVM+Coordinator
//
//  Created by Vitalii Navrotskyi on 13.12.2023.
//

import UIKit

protocol HomeFactory {
    func makeModule() -> UIViewController
}

struct HomeFactoryImp: HomeFactory {
    func makeModule() -> UIViewController {
        var homeMenuController = HomeMenuController()
        homeMenuController.title = "Rick And Morty"
        return homeMenuController
    }
}

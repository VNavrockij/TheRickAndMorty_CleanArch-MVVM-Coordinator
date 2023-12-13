//
//  AppFactory.swift
//  TheRickAndMorty_CleanArch+MVVM+Coordinator
//
//  Created by Vitalii Navrotskyi on 11.12.2023.
//

import UIKit

protocol AppFactory {
    func makeHomeCoordinator(navigation: UINavigationController) -> Coordinator
}

struct AppFactoryImp: AppFactory {
    func makeHomeCoordinator(navigation: UINavigationController) -> Coordinator {
        let homeFactory = HomeFactoryImp()
        let homeCoordinator = HomeCoordinator(navigation: navigation, homeFactory: homeFactory)
        return homeCoordinator
    }
}

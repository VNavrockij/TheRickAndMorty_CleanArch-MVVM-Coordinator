//
//  Coordinator.swift
//  TheRickAndMorty_CleanArch+MVVM+Coordinator
//
//  Created by Vitalii Navrotskyi on 11.12.2023.
//

import UIKit

protocol Coordinator {
    var navigation: UINavigationController { get }
    func start()
}

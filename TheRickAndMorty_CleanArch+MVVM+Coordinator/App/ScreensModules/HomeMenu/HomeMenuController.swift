//
//  ViewController.swift
//  TheRickAndMorty_CleanArch+MVVM+Coordinator
//
//  Created by Vitalii Navrotskyi on 05.12.2023.
//

import UIKit

class HomeMenuController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        configCollectionView()
    }

    private func configUI() {
        view.backgroundColor = .systemBackground
    }

    private func configCollectionView() {
        collectionView.register(ItemHomeMenuCell.self, forCellWithReuseIdentifier: ItemHomeMenuCell.reuseIdentifier)
    }
}

extension HomeMenuController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard 
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: ItemHomeMenuCell.reuseIdentifier,
                for: indexPath) as? ItemHomeMenuCell
        else { return UICollectionViewCell() }

//        cell.backgroundColor = .red
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
}

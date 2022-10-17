//
//  HouseViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// Лента новостей
class HouseViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageHouse = "house"
        static let imageHouseFill = "house.fill"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = .black
        tabBarItem.image = UIImage(systemName: Constants.imageHouse)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHouseFill)
        tabBarController?.tabBar.unselectedItemTintColor = .white
    }
    
}

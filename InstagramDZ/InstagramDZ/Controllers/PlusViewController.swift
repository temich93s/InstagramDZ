//
//  PlusViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// Cтраница добавления поста

final class PlusViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imagePlusAppName = "plus.app"
        static let imagePlusAppFillName = "plus.app.fill"
        static let colorBlackName = "ColorBlack"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = UIColor(named: Constants.colorBlackName)
        tabBarItem.image = UIImage(systemName: Constants.imagePlusAppName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imagePlusAppFillName)
    }
    
}

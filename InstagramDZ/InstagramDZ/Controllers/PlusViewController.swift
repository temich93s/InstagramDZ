//
//  PlusViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// страница добавления поста
final class PlusViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imagePlusApp = "plus.app"
        static let imagePlusAppFill = "plus.app.fill"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = .black
        tabBarItem.image = UIImage(systemName: Constants.imagePlusApp)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imagePlusAppFill)
    }
    
}

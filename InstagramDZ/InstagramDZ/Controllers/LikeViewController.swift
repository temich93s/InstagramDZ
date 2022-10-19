//
//  LikeViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Экран с лайками

final class LikeViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageHeartName = "heart"
        static let imageHeartFillName = "heart.fill"
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
        tabBarItem.image = UIImage(systemName: Constants.imageHeartName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHeartFillName)
    }

}

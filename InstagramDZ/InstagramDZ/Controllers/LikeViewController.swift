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
        static let imageHeart = "heart"
        static let imageHeartFill = "heart.fill"
        static let colorBlack = "ColorBlack"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = UIColor(named: Constants.colorBlack)
        tabBarItem.image = UIImage(systemName: Constants.imageHeart)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHeartFill)
    }

}

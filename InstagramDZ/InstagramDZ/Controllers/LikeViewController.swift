//
//  LikeViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// Экран с лайками
class LikeViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageHeart = "heart"
        static let imageHeartFill = "heart.fill"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = .black
        tabBarItem.image = UIImage(systemName: Constants.imageHeart)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHeartFill)
    }

}

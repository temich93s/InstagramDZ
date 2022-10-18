//
//  ProfileViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Cтраница профиля пользователя

final class ProfileViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imagePersonCircle = "person.circle"
        static let imagePersonCircleFill = "person.circle.fill"
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
        tabBarItem.image = UIImage(systemName: Constants.imagePersonCircle)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imagePersonCircleFill)
    }
}

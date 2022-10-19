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
        static let imagePersonCircleName = "person.circle"
        static let imagePersonCircleFillName = "person.circle.fill"
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
        tabBarItem.image = UIImage(systemName: Constants.imagePersonCircleName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imagePersonCircleFillName)
    }
}

//
//  SearchViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Cтраница поиска

final class SearchViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageMagnifyingglassCircle = "magnifyingglass.circle"
        static let imageMagnifyingglassCircleFill = "magnifyingglass.circle.fill"
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
        tabBarItem.image = UIImage(systemName: Constants.imageMagnifyingglassCircle)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageMagnifyingglassCircleFill)
    }

}

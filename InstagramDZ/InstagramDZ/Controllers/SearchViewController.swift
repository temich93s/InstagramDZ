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
        static let imageMagnifyingglassCircleName = "magnifyingglass.circle"
        static let imageMagnifyingglassCircleFillName = "magnifyingglass.circle.fill"
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
        tabBarItem.image = UIImage(systemName: Constants.imageMagnifyingglassCircleName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageMagnifyingglassCircleFillName)
    }

}

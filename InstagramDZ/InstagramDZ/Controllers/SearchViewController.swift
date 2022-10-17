//
//  SearchViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// страница поиска
final class SearchViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageMagnifyingglassCircle = "magnifyingglass.circle"
        static let imageMagnifyingglassCircleFill = "magnifyingglass.circle.fill"
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = .black
        tabBarItem.image = UIImage(systemName: Constants.imageMagnifyingglassCircle)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageMagnifyingglassCircleFill)
    }

}

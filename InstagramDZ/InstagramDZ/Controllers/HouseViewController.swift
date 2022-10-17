//
//  HouseViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// Лента новостей
final class HouseViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageHouse = "house"
        static let imageHouseFill = "house.fill"
        static let cellNibName = "StoriesTableViewCell"
        static let cellIdentifier = "StoriesCell"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = .black
        tabBarItem.image = UIImage(systemName: Constants.imageHouse)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHouseFill)
        tabBarController?.tabBar.unselectedItemTintColor = .white
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.register(
            UINib(nibName: Constants.cellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.cellIdentifier)
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension HouseViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = homeTableView.dequeueReusableCell(
                withIdentifier: Constants.cellIdentifier, for: indexPath) as? StoriesTableViewCell
        else { return UITableViewCell() }
        
        if (indexPath.row % 2) == 0 {
            cell.backgroundColor = .yellow
        } else {
            cell.backgroundColor = .blue
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(indexPath.row * 50 + 50)
    }
    
}

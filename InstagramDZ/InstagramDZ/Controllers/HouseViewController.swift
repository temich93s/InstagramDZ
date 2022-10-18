//
//  HouseViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Лента новостей

final class HouseViewController: UIViewController {

    // MARK: - Constants
    
    private enum Constants {
        static let imageHouse = "house"
        static let imageHouseFill = "house.fill"
        static let storiesCellNibName = "StoriesTableViewCell"
        static let storiesCellIdentifier = "StoriesCell"
        static let postsCellNibName = "PostsTableViewCell"
        static let postsCellIdentifier = "PostsCell"
        static let recomendationsCellNibName = "RecomendationsTableViewCell"
        static let recomendationsCellIdentifier = "RecomendationsCell"
        static let colorBlack = "ColorBlack"
        static let colorLightGray = "ColorLightGray"
        static let colorWhite = "ColorWhite"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var homeTableView: UITableView!
    
    // MARK: - Private Visual Properties
    
    private let refresh = UIRefreshControl()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private Action Methods
    
    @objc private func refreshAction() {
        refresh.endRefreshing()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        view.backgroundColor = UIColor(named: Constants.colorBlack)
        tabBarItem.image = UIImage(systemName: Constants.imageHouse)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHouseFill)
        tabBarController?.tabBar.unselectedItemTintColor = UIColor(named: Constants.colorWhite)
        
        refresh.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        refresh.tintColor = UIColor(named: Constants.colorLightGray)
        homeTableView.addSubview(refresh)
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.register(
            UINib(nibName: Constants.storiesCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.storiesCellIdentifier
        )
        homeTableView.register(
            UINib(nibName: Constants.postsCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.postsCellIdentifier
        )
        homeTableView.register(
            UINib(nibName: Constants.recomendationsCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.recomendationsCellIdentifier
        )
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension HouseViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard
                let storiesCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.storiesCellIdentifier, for: indexPath) as? StoriesTableViewCell
            else {
                return UITableViewCell()
            }
            return storiesCell
        case 2:
            guard
                let recomendationsCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.recomendationsCellIdentifier, for: indexPath) as? StoriesTableViewCell
            else {
                return UITableViewCell()
            }
            return recomendationsCell
        default:
            guard
                let postsCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.postsCellIdentifier, for: indexPath) as? PostsTableViewCell
            else {
                return UITableViewCell()
            }
            return postsCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 110
        case 2:
            return 340
        default:
            return 495
        }
    }
    
}

//
//  HouseViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// Лента новостей

final class HouseViewController: UIViewController {
    
    // MARK: - Enum
    
    private enum TableCellTypes {
        case stories
        case posts
        case recomendations
    }
    
    // MARK: - Constants
    
    private enum Constants {
        static let imageHouseName = "house"
        static let imageHouseFillName = "house.fill"
        static let storiesCellNibName = "StoriesTableViewCell"
        static let storiesCellIdentifier = "StoriesCell"
        static let postsCellNibName = "PostsTableViewCell"
        static let postsCellIdentifier = "PostsCell"
        static let recomendationsCellNibName = "RecomendationsTableViewCell"
        static let recomendationsCellIdentifier = "RecomendationsCell"
        static let colorBlackName = "ColorBlack"
        static let colorLightGrayName = "ColorLightGray"
        static let colorWhiteName = "ColorWhite"
    }

    // MARK: - IBOutlet
    
    @IBOutlet weak private var homeTableView: UITableView!
    
    // MARK: - Private Visual Properties
    
    private let refreshControl = UIRefreshControl()
    
    // MARK: - Private Properties
    
    private var tableCellsTypes: [TableCellTypes] = [.stories, .posts, .recomendations, .posts, .posts]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    @objc private func refreshAction() {
        refreshControl.endRefreshing()
    }
    
    private func setupUI() {
        setupTabBar()
        setupRefreshControl()
        setupHomeTableView()
        view.backgroundColor = UIColor(named: Constants.colorBlackName)
    }
    
    private func setupTabBar() {
        tabBarItem.image = UIImage(systemName: Constants.imageHouseName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHouseFillName)
        tabBarController?.tabBar.unselectedItemTintColor = UIColor(named: Constants.colorWhiteName)
    }
    
    private func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        refreshControl.tintColor = UIColor(named: Constants.colorLightGrayName)
    }
    
    private func setupHomeTableView() {
        homeTableView.addSubview(refreshControl)
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.rowHeight = UITableView.automaticDimension
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
        tableCellsTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = tableCellsTypes[indexPath.row]
        switch type {
        case .stories:
            guard
                let storiesCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.storiesCellIdentifier,
                    for: indexPath) as? StoriesTableViewCell
            else {
                return UITableViewCell()
            }
            return storiesCell
        case .posts:
            guard
                let postsCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.postsCellIdentifier,
                    for: indexPath) as? PostsTableViewCell
            else {
                return UITableViewCell()
            }
            return postsCell
        case .recomendations:
            guard
                let recomendationsCell = homeTableView.dequeueReusableCell(
                    withIdentifier: Constants.recomendationsCellIdentifier,
                    for: indexPath) as? RecomendationsTableViewCell
            else {
                return UITableViewCell()
            }
            return recomendationsCell
        }
    }
}

//
//  SearchViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Cтраница поиска

final class SearchViewController: UIViewController {
    
    // MARK: - Enum
    
    private enum TableCellsTypes {
        case profile
        case postCollection
        case storiesProfile
        case descriptonProfile
    }
    
    // MARK: - Constants
    
    private enum Constants {
        static let colorBlackName = "ColorBlack"
        static let colorLightGrayName = "ColorLightGray"
        static let profileCellNibName = "ProfileTableViewCell"
        static let profileCellIdentifier = "ProfileCell"
        static let postCollectionCellNibName = "PostCollectionTableViewCell"
        static let postCollectionCellIdentifier = "PostCollectionCell"
        static let descriptonProfileCellNibName = "DescriptonProfileTableViewCell"
        static let descriptonProfileCellIdentifier = "DescriptonProfileCell"
        static let profileStoriesCellNibName = "ProfileStoriesTableViewCell"
        static let profileStoriesCellIdentifier = "ProfileStoriesCell"
        static let imageMagnifyingglassCircleName = "magnifyingglass.circle"
        static let imageMagnifyingglassCircleFillName = "magnifyingglass.circle.fill"
        static let driveImageName = "Drive"
        static let recomedationImageName = "Recomedation"
        static let retrowaveImageName = "Retrowave"
        static let friendlyPersonImageName = "FriendlyPerson"
        static let profileImageName = "Retrowave"
        static let personName = "Майк"
        static let professionName = "Программист"
        static let descriptionText = "Не сдавайся, все будет хорошо"
        static let subscribesText = "oldfriend"
    }
    
    // MARK: - Private Visual Properties
    
    @IBOutlet weak private var profileTableView: UITableView!
    
    private let refreshControl = UIRefreshControl()
    
    // MARK: - Private Properties
    
    private var tableCells: [TableCellsTypes] = [.profile, .descriptonProfile, .storiesProfile, .postCollection]
    private let postCollection = [
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.recomedationImageName),
        Post(postImageName: Constants.recomedationImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.retrowaveImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.friendlyPersonImageName),
        Post(postImageName: Constants.friendlyPersonImageName),
        Post(postImageName: Constants.retrowaveImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.recomedationImageName),
        Post(postImageName: Constants.driveImageName),
        Post(postImageName: Constants.retrowaveImageName),
        Post(postImageName: Constants.retrowaveImageName),
        Post(postImageName: Constants.friendlyPersonImageName)
    ]
    private let profileDescription = ProfileDescription(
        profileImageName: Constants.profileImageName,
        personName: Constants.personName,
        professionName: Constants.professionName,
        descriptionText: Constants.descriptionText,
        subscribesText: Constants.subscribesText
    )
    
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
        setupRefreshControl()
        setupTabBar()
        setupProfileTableView()
        view.backgroundColor = UIColor(named: Constants.colorBlackName)
    }
    
    private func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        refreshControl.tintColor = UIColor(named: Constants.colorLightGrayName)
    }
    
    private func setupTabBar() {
        tabBarItem.image = UIImage(systemName: Constants.imageMagnifyingglassCircleName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageMagnifyingglassCircleFillName)
    }
    
    private func setupProfileTableView() {
        profileTableView.addSubview(refreshControl)
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.rowHeight = UITableView.automaticDimension
        profileTableView.register(
            UINib(nibName: Constants.profileCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.profileCellIdentifier)
        profileTableView.register(
            UINib(nibName: Constants.postCollectionCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.postCollectionCellIdentifier)
        profileTableView.register(
            UINib(nibName: Constants.descriptonProfileCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.descriptonProfileCellIdentifier)
        profileTableView.register(
            UINib(nibName: Constants.profileStoriesCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.profileStoriesCellIdentifier)
    }
    
}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableCells[indexPath.row]
        switch cell {
        case .profile:
            guard
                let profileCell = profileTableView.dequeueReusableCell(
                    withIdentifier: Constants.profileCellIdentifier,
                    for: indexPath) as? ProfileTableViewCell
            else {
                return UITableViewCell()
            }
            profileCell.profileDescription = profileDescription
            return profileCell
        case .postCollection:
            guard
                let postCollectionCell = profileTableView.dequeueReusableCell(
                    withIdentifier: Constants.postCollectionCellIdentifier,
                    for: indexPath) as? PostCollectionTableViewCell
            else {
                return UITableViewCell()
            }
            postCollectionCell.postCollection = postCollection
            postCollectionCell.viewHight =
                (view.bounds.width - 2) / 3 * CGFloat(lroundf(Float(postCollection.count) / 3))
            return postCollectionCell
        case .storiesProfile:
            guard
                let postCollectionCell = profileTableView.dequeueReusableCell(
                    withIdentifier: Constants.profileStoriesCellIdentifier,
                    for: indexPath) as? ProfileStoriesTableViewCell
            else {
                return UITableViewCell()
            }
            return postCollectionCell
        case .descriptonProfile:
            guard
                let descriptonProfileCell = profileTableView.dequeueReusableCell(
                    withIdentifier: Constants.descriptonProfileCellIdentifier,
                    for: indexPath) as? DescriptonProfileTableViewCell
            else {
                return UITableViewCell()
            }
            return descriptonProfileCell
        }
    }
    
}

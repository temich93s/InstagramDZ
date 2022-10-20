//
//  LikeViewController.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Экран с лайками

final class LikeViewController: UIViewController {

    // MARK: - Enum
    
    private enum TableSectionsTypes {
        case today
        case week
        case manyWeeksAgo
    }
    
    private enum TableCellsTypes {
        case comment
        case follower
    }
    
    // MARK: - Constants
    
    private enum Constants {
        static let todaySectionName = "Сегодня"
        static let weekSectionName = "На этой неделе"
        static let manyWeeksAgoSectionName = "Более недели назад"
        static let imageHeartName = "heart"
        static let imageHeartFillName = "heart.fill"
        static let commentsCellNibName = "CommentsTableViewCell"
        static let commentsCellIdentifier = "CommentsCell"
        static let followersCellNibName = "FollowersTableViewCell"
        static let followersCellIdentifier = "FollowersCell"
        static let colorBlackName = "ColorBlack"
        static let colorLightGrayName = "ColorLightGray"
        static let colorWhiteName = "ColorWhite"
    }
    
    // MARK: - Private Visual Properties
    
    @IBOutlet weak private var likeTableView: UITableView!
    @IBOutlet weak var mainHeaderLabel: UILabel!
    
    private let refreshControl = UIRefreshControl()
    
    // MARK: - Private Properties
    
    private var tableCellsForTodaySection: [TableCellsTypes] = [.follower, .comment, .follower]
    private var tableCellsForWeekSection: [TableCellsTypes] = [.comment, .comment, .follower, .comment, .follower]
    private var tableCellsForManyWeeksAgoSection: [TableCellsTypes] = [.comment, .comment, .follower, .follower]
    private var tableSections: [TableSectionsTypes] = [.today, .week, .manyWeeksAgo]
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Action Methods
    
    @objc private func refreshAction() {
        refreshControl.endRefreshing()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        setupLikeVC()
        setupTabBar()
        setupRefreshControl()
        setupLikeTableView()
    }
    
    private func setupLikeVC() {
        view.backgroundColor = UIColor(named: Constants.colorBlackName)
    }
    
    private func setupTabBar() {
        tabBarItem.image = UIImage(systemName: Constants.imageHeartName)
        tabBarItem.selectedImage = UIImage(systemName: Constants.imageHeartFillName)
    }
    
    private func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        refreshControl.tintColor = UIColor(named: Constants.colorLightGrayName)
    }
    
    private func setupLikeTableView() {
        mainHeaderLabel.frame = CGRect(x: 0, y: 0, width: 0, height: 80)
        likeTableView.addSubview(refreshControl)
        likeTableView.delegate = self
        likeTableView.dataSource = self
        likeTableView.rowHeight = UITableView.automaticDimension
        likeTableView.sectionHeaderTopPadding = 0
        likeTableView.register(
            UINib(nibName: Constants.commentsCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.commentsCellIdentifier)
        likeTableView.register(
            UINib(nibName: Constants.followersCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.followersCellIdentifier)
    }
    
    private func createTableCell(indexPath: IndexPath, tableCellsSection: [TableCellsTypes]) -> UITableViewCell {
        switch tableCellsSection[indexPath.row] {
        case .comment:
            guard
                let commentCell = likeTableView.dequeueReusableCell(
                    withIdentifier: Constants.commentsCellIdentifier, for: indexPath) as? CommentsTableViewCell
            else {
                return UITableViewCell()
            }
            return commentCell
        case .follower:
            guard
                let folowersCell = likeTableView.dequeueReusableCell(
                    withIdentifier: Constants.followersCellIdentifier, for: indexPath) as? FollowersTableViewCell
            else {
                return UITableViewCell()
            }
            return folowersCell
        }
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension LikeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let type = tableSections[section]
        switch type {
        case .today:
            return tableCellsForTodaySection.count
        case .week:
            return tableCellsForWeekSection.count
        case .manyWeeksAgo:
            return tableCellsForManyWeeksAgoSection.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = tableSections[indexPath.section]
        switch section {
        case .today:
            return createTableCell(indexPath: indexPath, tableCellsSection: tableCellsForTodaySection)
        case .week:
            return createTableCell(indexPath: indexPath, tableCellsSection: tableCellsForWeekSection)
        case .manyWeeksAgo:
            return createTableCell(indexPath: indexPath, tableCellsSection: tableCellsForManyWeeksAgoSection)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let type = tableSections[section]
        switch type {
        case .today:
            return Constants.todaySectionName
        case .week:
            return Constants.weekSectionName
        case .manyWeeksAgo:
            return Constants.manyWeeksAgoSectionName
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard
            let header = view as? UITableViewHeaderFooterView,
            let colorWhite = UIColor(named: Constants.colorWhiteName)
        else { return }
        let friendCommentAttribute = [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17),
            NSAttributedString.Key.foregroundColor: colorWhite
        ]
        let type = tableSections[section]
        var attributeText = NSMutableAttributedString()
        switch type {
        case .today:
            attributeText = NSMutableAttributedString(
                string: Constants.todaySectionName, attributes: friendCommentAttribute)
        case .week:
            attributeText = NSMutableAttributedString(
                string: Constants.weekSectionName, attributes: friendCommentAttribute)
        case .manyWeeksAgo:
            attributeText = NSMutableAttributedString(
                string: Constants.manyWeeksAgoSectionName, attributes: friendCommentAttribute)
        }
        header.textLabel?.attributedText = attributeText
    }
    
}

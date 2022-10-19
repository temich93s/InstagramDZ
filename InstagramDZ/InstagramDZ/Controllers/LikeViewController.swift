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
        case recomendation
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
        
        static let colorBlackName = "ColorBlack"
        static let colorLightGrayName = "ColorLightGray"
    }
    
    // MARK: - Private Visual Properties
    
    @IBOutlet weak private var likeTableView: UITableView!
    private let refreshControl = UIRefreshControl()
    
    // MARK: - Private Properties
    
    private var tableCellsTypes: [TableCellsTypes] = [.comment, .comment, .comment, .comment, .comment]
    private var tableSectionsTypes: [TableSectionsTypes] = [.today, .week, .manyWeeksAgo]
    
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
        likeTableView.addSubview(refreshControl)
        likeTableView.delegate = self
        likeTableView.dataSource = self
        likeTableView.rowHeight = UITableView.automaticDimension
        likeTableView.sectionHeaderTopPadding = 0
        likeTableView.register(
            UINib(nibName: Constants.commentsCellNibName, bundle: nil),
            forCellReuseIdentifier: Constants.commentsCellIdentifier
        )
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension LikeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableSectionsTypes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let type = tableSectionsTypes[section]
        switch type {
        case .today:
            return 4
        case .week:
            return 6
        case .manyWeeksAgo:
            return 8
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let section = tableSectionsTypes[indexPath.section]
//        let row = tableSectionsTypes[indexPath.row]
        
        guard
            let storiesCell = likeTableView.dequeueReusableCell(
                withIdentifier: Constants.commentsCellIdentifier,
                for: indexPath) as? CommentsTableViewCell
        else {
            return UITableViewCell()
        }
        return storiesCell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let type = tableSectionsTypes[section]
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
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        header.textLabel?.textColor = UIColor.white
        
        let friendCommentAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        let friendCommentAttributeText = NSMutableAttributedString(
            string: "friendCommentText", attributes: friendCommentAttribute)
        header.textLabel?.attributedText = friendCommentAttributeText
    }
    
}

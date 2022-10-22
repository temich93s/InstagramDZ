//
//  CommentsTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 19.10.2022.
//

import UIKit

// MARK: - Ячейка с комментарием

final class CommentsTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorDarkGrayName = "ColorDarkGray"
        static let friendNameText = "mynewfriend "
        static let friendCommentText = "понравился ваш комментарий: \"красиво\" "
        static let dateCommentText = "4д."
        static let colorLightGrayName = "ColorLightGray"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var friendLogoImageView: UIImageView!
    @IBOutlet weak private var commentLabel: UILabel!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        friendLogoImageView.layer.cornerRadius = friendLogoImageView.frame.height / 2
        guard let colorLightGray = UIColor(named: Constants.colorLightGrayName) else { return }
        let friendNameAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)]
        let friendNameAttributeText = NSMutableAttributedString(
            string: Constants.friendNameText, attributes: friendNameAttribute)
        let friendCommentAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        let friendCommentAttributeText = NSMutableAttributedString(
            string: Constants.friendCommentText, attributes: friendCommentAttribute)
        let dateCommentAttribute = [NSAttributedString.Key.foregroundColor: colorLightGray]
        let dateCommentAttributeText = NSMutableAttributedString(
            string: Constants.dateCommentText, attributes: dateCommentAttribute)
        let resultText = NSMutableAttributedString()
        resultText.append(friendNameAttributeText)
        resultText.append(friendCommentAttributeText)
        resultText.append(dateCommentAttributeText)
        commentLabel.attributedText = resultText
    }
    
}

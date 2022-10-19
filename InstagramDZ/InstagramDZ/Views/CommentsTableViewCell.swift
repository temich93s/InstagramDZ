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
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var friendLogoImageView: UIImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    // MARK: - Private Properties
    
    private var friendNameText = "myfriend "
    private var friendCommentText = "Отличное фото, когда у тебя отпуск?) "
    private var dateCommentText = "4д."
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        friendLogoImageView.layer.cornerRadius = friendLogoImageView.frame.height / 2
        
        let friendNameAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)]
        let friendNameAttributeText = NSMutableAttributedString(
            string: friendNameText, attributes: friendNameAttribute)

        let friendCommentAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        let friendCommentAttributeText = NSMutableAttributedString(
            string: friendCommentText, attributes: friendCommentAttribute)
        
        let dateCommentAttribute = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        let dateCommentAttributeText = NSMutableAttributedString(
            string: dateCommentText, attributes: dateCommentAttribute)
        
        let resultText = NSMutableAttributedString()
        resultText.append(friendNameAttributeText)
        resultText.append(friendCommentAttributeText)
        resultText.append(dateCommentAttributeText)
        
        commentLabel.attributedText = resultText
    }
}

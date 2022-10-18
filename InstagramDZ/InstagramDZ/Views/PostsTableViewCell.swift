//
//  PostsTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Ячейка с постами

final class PostsTableViewCell: UITableViewCell {
    
    // MARK: - Constants
    
    private enum Constants {
        static let colorLightGray = "ColorLightGray"
        static let textPlaceholder = "Добавьте комментарий..."
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var friendLogoImageView: UIImageView!
    @IBOutlet weak private var userLogoImageView: UIImageView!
    @IBOutlet weak private var addComentTextView: UITextField!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        guard let placeholderTextColor = UIColor(named: Constants.colorLightGray) else { return }
        friendLogoImageView.layer.cornerRadius = friendLogoImageView.frame.height / 2
        userLogoImageView.layer.cornerRadius = userLogoImageView.frame.height / 2
        addComentTextView.attributedPlaceholder = NSAttributedString(
            string: Constants.textPlaceholder,
            attributes: [NSAttributedString.Key.foregroundColor: placeholderTextColor]
        )
    }
    
}

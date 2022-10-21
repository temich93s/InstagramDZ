//
//  ProfileTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка-профиль пользователя

final class ProfileTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorColorDarkGray = "ColorDarkGray"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var profilePhotoImageView: UIImageView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        circleView.layer.cornerRadius = circleView.frame.height / 2
        profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.height / 2
        profilePhotoImageView.layer.borderColor = UIColor(named: Constants.colorColorDarkGray)?.cgColor
        profilePhotoImageView.layer.borderWidth = 1
    }
    
}

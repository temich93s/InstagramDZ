//
//  ProfileTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

/// ячейка-профиль пользователя

final class ProfileTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorDarkGrayName = "ColorDarkGray"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var circleView: UIView!
    @IBOutlet weak private var profilePhotoImageView: UIImageView!
    
    // MARK: - Public Methods
    
    func configureCell(profileDescription: ProfileDescription) {
        circleView.layer.cornerRadius = circleView.frame.height / 2
        profilePhotoImageView.image = UIImage(named: profileDescription.profileImageName)
        profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.height / 2
        profilePhotoImageView.layer.borderColor = UIColor(named: Constants.colorDarkGrayName)?.cgColor
        profilePhotoImageView.layer.borderWidth = 1
    }
    
}

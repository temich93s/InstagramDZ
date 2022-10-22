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
    
    @IBOutlet weak private var circleView: UIView!
    @IBOutlet weak private var profilePhotoImageView: UIImageView!
    
    // MARK: - Public Properties
    
    var profileDescription: ProfileDescription? {
        didSet {
            guard let safeProfileImageName = profileDescription?.profileImageName else { return }
            circleView.layer.cornerRadius = circleView.frame.height / 2
            profilePhotoImageView.image = UIImage(named: safeProfileImageName)
            profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.height / 2
            profilePhotoImageView.layer.borderColor = UIColor(named: Constants.colorColorDarkGray)?.cgColor
            profilePhotoImageView.layer.borderWidth = 1
        }
    }
    
}

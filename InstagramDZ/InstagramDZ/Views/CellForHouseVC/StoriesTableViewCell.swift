//
//  StoriesTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Ячейка со сторисами

final class StoriesTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorCircleName = "ColorCircle"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var addStoriesButton: UIButton!
    @IBOutlet private var circleViews: [UIView]!
    @IBOutlet private var profileImageViews: [UIImageView]!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        for circleView in circleViews {
            circleView.layer.cornerRadius = circleView.frame.height / 2
            circleView.layer.borderColor = UIColor(named: Constants.colorCircleName)?.cgColor
            circleView.layer.borderWidth = 3
        }
        for profileImageView in profileImageViews {
            profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        }
        addStoriesButton.layer.cornerRadius = addStoriesButton.frame.height / 2
    }
    
}

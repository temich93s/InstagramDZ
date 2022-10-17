//
//  StoriesTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// ячейка со сторисами
final class StoriesTableViewCell: UITableViewCell {

    // MARK: - IBOutlet
    
    @IBOutlet weak var addStoriesButton: UIButton!
    @IBOutlet var circleViews: [UIView]!
    @IBOutlet var profilesImageViews: [UIImageView]!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        for circleView in circleViews {
            circleView.layer.cornerRadius = circleView.frame.height / 2
            circleView.layer.borderColor = UIColor.systemPink.cgColor
            circleView.layer.borderWidth = 3
        }
        for profileImageView in profilesImageViews {
            profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        }
        addStoriesButton.layer.cornerRadius = addStoriesButton.frame.height / 2
    }
    
}

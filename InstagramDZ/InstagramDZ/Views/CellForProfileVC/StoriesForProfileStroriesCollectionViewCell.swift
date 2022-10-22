//
//  StoriesForProfileStroriesCollectionViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка-сториз

final class StoriesForProfileStroriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Constants
    
    private enum Constants {
        static let colorLightGrayName = "ColorLightGray"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var storyImageView: UIImageView!
    @IBOutlet weak private var nameStroryLabel: UILabel!
    
    // MARK: - Private Properties
    
    private let profileStory = ProfileStory()
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        storyImageView.image = UIImage(named: profileStory.storyImageName)
        nameStroryLabel.text = profileStory.nameStroryName
        storyImageView.layer.cornerRadius = storyImageView.frame.height / 2
        storyImageView.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
        storyImageView.layer.borderWidth = 2
    }

}

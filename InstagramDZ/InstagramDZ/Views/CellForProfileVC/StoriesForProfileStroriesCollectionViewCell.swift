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
    
    // MARK: - Public Properties
    
    var profileStory: ProfileStory? {
        didSet {
            guard
                let safeStoryImageName = profileStory?.storyImageName,
                let safeStoryName = profileStory?.storyName
            else { return }
            storyImageView.image = UIImage(named: safeStoryImageName)
            nameStroryLabel.text = safeStoryName
            storyImageView.layer.cornerRadius = storyImageView.frame.height / 2
            storyImageView.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
            storyImageView.layer.borderWidth = 2
        }
    }

}

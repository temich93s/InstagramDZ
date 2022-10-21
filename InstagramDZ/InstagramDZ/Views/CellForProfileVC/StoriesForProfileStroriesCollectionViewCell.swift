//
//  StoriesForProfileStroriesCollectionViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка-сториз

final class StoriesForProfileStroriesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var storyImageView: UIImageView!
    @IBOutlet weak var nameStroryLabel: UILabel!
    
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
    }

}

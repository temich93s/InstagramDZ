//
//  PostForPostCollectionCollectionViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка-пост для коллекции постов

final class PostForPostCollectionCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlet
    
    @IBOutlet weak var postImageView: UIImageView!
    
    // MARK: - Private Properties
    
    private let post = Post()
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        postImageView.image = UIImage(named: post.postImageName)
    }

}

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
    
    @IBOutlet weak private var postImageView: UIImageView!
    
    // MARK: - Public Methods
    
    func configureCell(post: Post?) {
        guard let safeImageName = post?.postImageName else { return }
        postImageView.image = UIImage(named: safeImageName)
    }
    
}

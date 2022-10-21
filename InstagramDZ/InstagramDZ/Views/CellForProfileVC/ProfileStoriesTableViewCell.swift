//
//  ProfileStoriesTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка с историями

final class ProfileStoriesTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

extension ProfileStoriesTableViewCell:
    UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let itemCell = collectionView.dequeueReusableCell(
//            withReuseIdentifier: Constants.postForCollectionCellIdentifier,
//            for: indexPath) as? PostForPostCollectionCollectionViewCell
//        else {
            return UICollectionViewCell()
//        }
//        return itemCell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.width - 2) / 3, height: (collectionView.bounds.width - 2) / 3)
    }
    
}

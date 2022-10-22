//
//  postCollectionTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка коллекция постов пользователя

final class PostCollectionTableViewCell: UITableViewCell {
    
    // MARK: - Constants
    
    private enum Constants {
        static let postForCollectionCellNibName = "PostForPostCollectionCollectionViewCell"
        static let postForCollectionCellIdentifier = "PostForPostCollectionCell"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var postCollectionView: UICollectionView!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods

    private func setupUI() {
        postCollectionView.delegate = self
        postCollectionView.dataSource = self
        postCollectionView.register(
            UINib(nibName: Constants.postForCollectionCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.postForCollectionCellIdentifier)
    }
}

extension PostCollectionTableViewCell:
    UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let itemCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: Constants.postForCollectionCellIdentifier,
            for: indexPath) as? PostForPostCollectionCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        return itemCell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.width - 2) / 3, height: (collectionView.bounds.width - 2) / 3)
    }
    
}

//
//  ProfileStoriesTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка с историями

final class ProfileStoriesTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let storiesForProfileStroriesCollectionCellNibName = "StoriesForProfileStroriesCollectionViewCell"
        static let storiesForProfileStroriesCollectionCellIdentifier = "StoriesForProfileStroriesCollectionCell"
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
            UINib(nibName: Constants.storiesForProfileStroriesCollectionCellNibName, bundle: nil),
            forCellWithReuseIdentifier: Constants.storiesForProfileStroriesCollectionCellIdentifier)
    }
    
}

extension ProfileStoriesTableViewCell:
    UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let itemCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: Constants.storiesForProfileStroriesCollectionCellIdentifier,
            for: indexPath) as? StoriesForProfileStroriesCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        return itemCell
    }
    
}

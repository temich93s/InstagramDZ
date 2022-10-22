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
    @IBOutlet weak private var mainView: UIView!
    
    // MARK: - Private Methods
    
    var viewWidth: CGFloat? {
        didSet {
            postCollectionView.translatesAutoresizingMaskIntoConstraints = false
            if let safeViewWidth = viewWidth {
                postCollectionView.heightAnchor.constraint(equalToConstant: safeViewWidth).isActive = true
            }
        }
    }
    
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
//        postCollectionView.translatesAutoresizingMaskIntoConstraints = false
//        postCollectionView.heightAnchor.constraint(equalToConstant: viewWidth).isActive = true
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
        print(collectionView.bounds.width)
        return CGSize(width: (collectionView.bounds.width - 2) / 3, height: (collectionView.bounds.width - 2) / 3)
    }
    
}

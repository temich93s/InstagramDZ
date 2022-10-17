//
//  RecomendationsTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

/// ячейка с рекомендациями
class RecomendationsTableViewCell: UITableViewCell {

    // MARK: - IBOutlet
    @IBOutlet var subscribeButtons: [UIButton]!
    @IBOutlet var backgroundRecomendationViews: [UIView]!
    @IBOutlet var imageRecomandationImageViews: [UIImageView]!
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        for subscribeButton in subscribeButtons {
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height / 4
        }
        for backgroundRecomendationView in backgroundRecomendationViews {
            backgroundRecomendationView.layer.borderColor = UIColor.darkGray.cgColor
            backgroundRecomendationView.layer.borderWidth = 1
        }
        for imageRecomandationImageView in imageRecomandationImageViews {
            imageRecomandationImageView.layer.cornerRadius = imageRecomandationImageView.frame.height / 2
        }
    }
    
}

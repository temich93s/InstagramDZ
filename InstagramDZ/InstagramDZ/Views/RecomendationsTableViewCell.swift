//
//  RecomendationsTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 17.10.2022.
//

import UIKit

// MARK: - Ячейка с рекомендациями

final class RecomendationsTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorDarkGray = "ColorDarkGray"
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet private var subscribeButtons: [UIButton]!
    @IBOutlet private var backgroundRecomendationViews: [UIView]!
    @IBOutlet private var imageRecomandationImageViews: [UIImageView]!
    
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
            backgroundRecomendationView.layer.borderColor = UIColor(named: Constants.colorDarkGray)?.cgColor
            backgroundRecomendationView.layer.borderWidth = 1
        }
        for imageRecomandationImageView in imageRecomandationImageViews {
            imageRecomandationImageView.layer.cornerRadius = imageRecomandationImageView.frame.height / 2
        }
    }
    
}

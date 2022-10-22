//
//  DescriptonProfileTableViewCell.swift
//  InstagramDZ
//
//  Created by 2lup on 21.10.2022.
//

import UIKit

// MARK: - ячейка c описание профиля пользователя

final class DescriptonProfileTableViewCell: UITableViewCell {

    // MARK: - Constants
    
    private enum Constants {
        static let colorLightGrayName = "ColorLightGray"
        static let prefixText = "Подписаны: "
    }
    
    // MARK: - IBOutlet
    
    @IBOutlet weak private var namePersonLabel: UILabel!
    @IBOutlet weak private var professionLabel: UILabel!
    @IBOutlet weak private var descriptionLabel: UILabel!
    @IBOutlet weak private var subscribesLabel: UILabel!
    @IBOutlet weak private var subscribeButton: UIButton!
    @IBOutlet weak private var writeButton: UIButton!
    @IBOutlet weak private var moreInformationButton: UIButton!
    
    // MARK: - Private Properties
    
    private let profileDescription = ProfileDescription()
    
    // MARK: - Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        subscribeButton.layer.cornerRadius = subscribeButton.frame.height / 4
        namePersonLabel.text = profileDescription.personName
        professionLabel.text = profileDescription.professionName
        descriptionLabel.text = profileDescription.descriptionText
        
        let attribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)]
        let attributeText = NSMutableAttributedString(string: Constants.prefixText)
        attributeText.append(
            NSMutableAttributedString(string: profileDescription.subscribesText, attributes: attribute))
        
        subscribesLabel.attributedText = attributeText
        
        writeButton.layer.cornerRadius = writeButton.frame.height / 4
        writeButton.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
        writeButton.layer.borderWidth = 1
        
        moreInformationButton.layer.cornerRadius = moreInformationButton.frame.height / 4
        moreInformationButton.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
        moreInformationButton.layer.borderWidth = 1
    }
    
}

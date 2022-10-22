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
    
    // MARK: - Public Properties
    
    var profileDescription: ProfileDescription? {
        didSet {
            guard
                let safePersonName = profileDescription?.personName,
                let safeProfessionName = profileDescription?.professionName,
                let safeDescriptionText = profileDescription?.descriptionText,
                let safeSubscribesText = profileDescription?.subscribesText
            else { return }
            let attribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)]
            let attributeText = NSMutableAttributedString(string: Constants.prefixText)
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height / 4
            namePersonLabel.text = safePersonName
            professionLabel.text = safeProfessionName
            descriptionLabel.text = safeDescriptionText
            attributeText.append(
                NSMutableAttributedString(string: safeSubscribesText, attributes: attribute))
            subscribesLabel.attributedText = attributeText
            writeButton.layer.cornerRadius = writeButton.frame.height / 4
            writeButton.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
            writeButton.layer.borderWidth = 1
            moreInformationButton.layer.cornerRadius = moreInformationButton.frame.height / 4
            moreInformationButton.layer.borderColor = UIColor(named: Constants.colorLightGrayName)?.cgColor
            moreInformationButton.layer.borderWidth = 1
        }
    }
    
}

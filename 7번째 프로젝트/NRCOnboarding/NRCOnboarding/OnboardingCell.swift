//
//  OnboardingCell.swift
//  NRCOnboarding
//
//  Created by 소프트웨어컴퓨터 on 2024/01/24.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    func configure(_ message: OnboardingMessage){
        thumbnailImage.image = UIImage(named: message.imageName)
        titleLabel.text = message.title
        descriptionLabel.text = message.description
    }
}

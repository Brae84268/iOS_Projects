//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by 소프트웨어컴퓨터 on 2024/01/22.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configure(_ Framework: AppleFramework){
        thumbnailImageView.image = UIImage(named: Framework.imageName)
        nameLabel.text = Framework.name
    }
}

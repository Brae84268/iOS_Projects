//
//  QuickFocusCell.swift
//  HeadSpaceFocus
//
//  Created by 소프트웨어컴퓨터 on 2024/02/05.
//

import UIKit

class QuickFocusCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptiionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ quickFocus: QuickFocus){
        thumbnailImageView.image = UIImage(named: quickFocus.imageName)
        descriptiionLabel.text = quickFocus.description
        titleLabel.text = quickFocus.title
    }
}


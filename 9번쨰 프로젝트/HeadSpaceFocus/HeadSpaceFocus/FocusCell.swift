//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by 소프트웨어컴퓨터 on 2024/01/31.
//

import UIKit

class FocusCell: UICollectionViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
    }
    
    func configure(_ item:Focus){
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumbnailImageView.image = UIImage(systemName:item.imageName)?.withRenderingMode(.alwaysOriginal)
    }
}

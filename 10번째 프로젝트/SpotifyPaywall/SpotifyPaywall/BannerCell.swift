//
//  BannerCell.swift
//  SpotifyPaywall
//
//  Created by joonwon lee on 2022/04/30.
//

import UIKit

class BannerCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLavel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 16
    }
    
    func configure(_ info:BannerInfo){
        titleLabel.text = info.title
        descriptionLavel.text = info.description
        thumbnailImageView.image = UIImage(named: info.imageName)
    }
}

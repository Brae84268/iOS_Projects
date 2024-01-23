//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by 소프트웨어컴퓨터 on 2024/01/23.
//

import UIKit

class FeedCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    func configure(_ imageName: String){
        thumbnailImageView.image = UIImage(named: imageName)
    }
}

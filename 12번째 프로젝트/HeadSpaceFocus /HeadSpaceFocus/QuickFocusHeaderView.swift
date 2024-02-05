//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 소프트웨어컴퓨터 on 2024/02/05.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title:String){
        titleLabel.text = title
    }
}

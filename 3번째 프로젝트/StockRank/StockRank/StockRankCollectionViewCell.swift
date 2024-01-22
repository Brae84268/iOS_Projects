//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 소프트웨어컴퓨터 on 2024/01/15.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var companyPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var rankRabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    func configure(_ stock: StockModel){
        rankRabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"
        diffLabel.text = "\(stock.diff)%"
        diffLabel.textColor = stock.diff > 0 ? UIColor.systemRed : UIColor.systemBlue
        
        
        func convertToCurrencyFormat(price: Int) -> String{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            numberFormatter.maximumFractionDigits = 0
            let result = numberFormatter.string(from: NSNumber(value: price))
            guard let result else{
                return ""
            }
            
            return result
        }
    }
}

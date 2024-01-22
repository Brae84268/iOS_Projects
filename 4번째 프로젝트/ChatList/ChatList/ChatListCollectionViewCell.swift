//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by 소프트웨어컴퓨터 on 2024/01/16.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbNail: UIImageView!
    
    func configure(_ chat: Chat){
        thumbNail.image = UIImage(named: chat.name)
        thumbNail.layer.cornerRadius = 15
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date) 
    }
    func formattedDateString(dateString: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        if let date = formatter.date(from: dateString){
            formatter.dateFormat = "M/d"
            return formatter.string(from: date)
        }else{
            return ""
        }
        
        
    }
}

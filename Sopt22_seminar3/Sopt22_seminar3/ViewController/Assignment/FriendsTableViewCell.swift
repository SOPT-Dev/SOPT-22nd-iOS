//
//  FriendsTableViewCell.swift
//  Sopt22_seminar3
//
//  Created by 이혜진 on 2018. 4. 14..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // 프로필 이미지 동그란 모양으로 만들기
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.width/2
        
        profileImageView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        profileImageView.layer.borderWidth = 0.1
        
        messageView.layer.cornerRadius = 3
    }
}

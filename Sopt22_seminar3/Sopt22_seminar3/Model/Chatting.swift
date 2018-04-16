//
//  Chatting.swift
//  Sopt22_seminar3
//
//  Created by 이혜진 on 2018. 4. 16..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import Foundation
import UIKit

struct Chatting {
    
    var friends: [Profile]
    
    var title: String
    var image: UIImage?
    var lastContent: String
    var chattingCount: Int
    var date: String
    
    init(friends: [Profile] = [Profile](), id: Int = -1, title: String = "",
         image: UIImage? = nil, lastContent: String = "", chattingCount: Int = 0, date: String = "방금") {
        self.friends = friends
        self.title = title
        self.image = image
        self.lastContent = lastContent
        self.chattingCount = chattingCount
        self.date = date
    }
}


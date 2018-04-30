//
//  Board.swift
//  Sopt22_seminar4
//
//  Created by 이혜진 on 2018. 4. 30..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import Foundation

struct Board: Codable {
    let board_idx: Int
    let board_title: String?
    let board_content: String?
    let board_views: Int
    let board_photo: String?
    let board_writetime: String
    let user_id: String?
}

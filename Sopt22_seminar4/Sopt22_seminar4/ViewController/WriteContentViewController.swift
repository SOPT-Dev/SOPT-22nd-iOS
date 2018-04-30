//
//  WriteContentViewController.swift
//  Sopt22_seminar4
//
//  Created by 이혜진 on 2018. 4. 30..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class WriteContentViewController: UIViewController {
    let userdefault = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // 게시판 글 쓰기
    // 이 function을 이용해서 구현해주세요. : null 값을 전송하면 어떤 결과가 나오는지 postman으로 확인하시고, 예외 처리를 해주세요.
    // 이미지 업로드는 다음 세미나 때 하겠습니다.
    func saveContent(title: String, content: String) {
        let URL = "http://13.125.118.111:3009/board"
        
        let body: [String: Any] = [
            "user_id" : gsno(userdefault.string(forKey: "nickName")),
            "board_title" : title,
            "board_content" : content
        ]
        
        Alamofire.request(URL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: nil).responseData() { res in
            switch res.result {
            case .success:
                //////// 직접 구현해보세요. ////////
                
                
                
                
                
                ////////
                break
            case .failure(let err):
                print(err.localizedDescription)
                break
            }
        }
    }

}

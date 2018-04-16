//
//  ExtensionControl.swift
//  Sopt22_seminar3
//
//  Created by 이혜진 on 2018. 4. 14..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import Foundation
import UIKit


// Identifier를 return 합니다.
extension NSObject {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// 옵셔널 바인딩 function
extension UIViewController {
    // string? 옵셔널 바인딩
    func gsno(_ value: String?) -> String {
        return value ?? ""
    }
    
    // int? 옵셔널 바인딩
    func gino(_ value: Int?) -> Int {
//        return value ?? 0
        
        if let value_ = value {
            return value_
        } else {
            return 0
        }
    }
}

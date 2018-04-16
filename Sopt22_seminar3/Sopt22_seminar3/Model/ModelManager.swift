//
//  ModelManager.swift
//  Sopt22_seminar3
//
//  Created by 이혜진 on 2018. 4. 16..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import Foundation

struct ModelManager {
    static let sharedInstance = ModelManager()
    
    var friends: [Profile] = [Profile]()
    
    init() {
        let friend1 = Profile(name: "안드로이드파트장 이영규", profileImage: #imageLiteral(resourceName: "pikachu5"),
                              phone: "010-3643-9714", age: 25, birthday: "04.07")
        let friend2 = Profile(name: "기획파트장 안다혜",
                              phone: "010-8751-4203", age: 23, birthday: "06.05", message: "곰곰")
        let friend3 = Profile(name: "디자인파트장 박찬은", profileImage: #imageLiteral(resourceName: "pikachu2"),
                              phone: "010-9489-4605", age: 24, birthday: "03.07", message: "ㄷ ㅁㅇ ㅂㄱ ㅎㅈㅅㅇㅠ")
        let friend4 = Profile(name: "서버파트장 이상은", profileImage: #imageLiteral(resourceName: "pikachu7"),
                              phone: "010-6211-4771", age: 28, birthday: "11.07")
        let friend5 = Profile(name: "웹파트장 오강훈",
                              phone: "010-3003-2758", age: 23, birthday: "12.16")
        let friend6 = Profile(name: "회장 유동현", profileImage: #imageLiteral(resourceName: "pikachu9"),
                              phone: "010-4369-5545", age: 25, birthday: "08.02")
        let friend7 = Profile(name: "부회장 조수현", profileImage: #imageLiteral(resourceName: "pikachu4"),
                              phone: "010-7153-4759", age: 25, birthday: "04.21", message: "♥️")
        let friend8 = Profile(name: "총무 최다예", profileImage: #imageLiteral(resourceName: "pikachu10"),
                              phone: "010-2802-3287", age: 26, birthday: "11.07")
        let friend9 = Profile(name: "운영팀장 유현영", profileImage: #imageLiteral(resourceName: "pikachu3"),
                              phone: "010-5006-0804", age: 22, birthday: "10.10", message: "우니")
        let friend10 = Profile(name: "구리 불주먹", profileImage: #imageLiteral(resourceName: "pikachu6"),
                               phone: "010-4578-0665", age: 26, birthday: "09.23", message: "🐣알을깨쟛🐣")
        
        
        // 팀원의 정보를 채워주세요
        let friend11 = Profile(name: "iOS 승수", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend12 = Profile(name: "iOS 수진", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend13 = Profile(name: "iOS 재림", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend14 = Profile(name: "iOS 예은", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend15 = Profile(name: "iOS 관용", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend16 = Profile(name: "iOS 성훈", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend17 = Profile(name: "iOS 세은", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend18 = Profile(name: "iOS 현호", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend19 = Profile(name: "iOS 주연", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend20 = Profile(name: "iOS 동규", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend21 = Profile(name: "iOS 어진", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend22 = Profile(name: "iOS 영준", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend23 = Profile(name: "iOS 지현", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend24 = Profile(name: "iOS 충신", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend25 = Profile(name: "iOS 용범", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend26 = Profile(name: "iOS 구일", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend27 = Profile(name: "iOS 기웅", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend28 = Profile(name: "iOS 초이", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend29 = Profile(name: "iOS 예은", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend30 = Profile(name: "iOS 덕원", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend31 = Profile(name: "iOS 예원", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        let friend32 = Profile(name: "iOS 민하", profileImage: nil, phone: "", age: 0, birthday: "", message: nil)
        
        
        self.friends = [friend10, friend1, friend2, friend3, friend4, friend5, friend6, friend7, friend8, friend9]
        
        self.friends = friends.sorted(by: { $0.name < $1.name })
        
        self.friends.append(contentsOf: [friend11, friend12, friend13, friend14, friend15, friend16, friend17, friend18,
                                         friend19, friend20, friend21, friend22, friend23, friend24, friend25, friend26,
                                         friend27, friend28, friend29, friend30, friend31, friend32])
    }
}

//
//  BoardDetailTableViewController.swift
//  Sopt22_seminar4
//
//  Created by 이혜진 on 2018. 4. 30..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit

class BoardDetailTableViewController: UIViewController {
    
    @IBOutlet weak var commentSendView: UIView!
    
    
    // 화면 터치했을 때 키보드 사라지게 하는 gesture
    var keyboardDismissGesture: UITapGestureRecognizer?

    override func viewDidLoad() {
        super.viewDidLoad()

        setKeyboardSetting()
    }

    
    //////// 글 디테일 띄우기, 댓글 보기, 댓글 쓰기 구현 ////////
    
    
    
    
    
    
    
    
    ////////
}




extension BoardDetailTableViewController {
    
    //////// 외우지 않아도 되는 부분입니다. 표시된 부분만 고쳐서 사용하세요. ////////
    // 코드 설명 : 키보드가 나올 때 키보드의 높이를 계산해서 댓글 뷰가 키보드 위에 뜰 수 있도록 합니다.
    //          view.frame을 조정하면 키보드가 나오고 들어갈 때 뷰가 움직이게 되겠지요?
    //          notification : 옵저버라고 생각하시면 됩니다. 시점을 캐치하여 #selector()의 액션이 일어나도록 합니다.
    //                          이 코드에서는 키보드가 나올 때, 들어갈 때 의 시점을 캐치하여 뷰의 frame을 조정합니다.
    func setKeyboardSetting() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        adjustKeyboardDismissGesture(isKeyboardVisible: true)
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //////// 키보드의 사이즈만큼 commentSendView의 y축을 위로 이동시킴 ////////
            commentSendView.frame.origin.y -= keyboardSize.height
            ////////
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        adjustKeyboardDismissGesture(isKeyboardVisible: false)
        
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //////// 키보드의 사이즈만큼 commentSendView의 y축을 아래로 이동시킴 ////////
            commentSendView.frame.origin.y += keyboardSize.height
            ////////
            self.view.layoutIfNeeded()
        }
    }
    
    func adjustKeyboardDismissGesture(isKeyboardVisible: Bool) {
        if isKeyboardVisible {
            if keyboardDismissGesture == nil {
                keyboardDismissGesture = UITapGestureRecognizer(target: self, action: #selector(tapBackground))
                view.addGestureRecognizer(keyboardDismissGesture!)
            }
        } else {
            if keyboardDismissGesture != nil {
                view.removeGestureRecognizer(keyboardDismissGesture!)
                keyboardDismissGesture = nil
            }
        }
    }
    
    @objc func tapBackground() {
        self.view.endEditing(true)
    }
    ////////
}

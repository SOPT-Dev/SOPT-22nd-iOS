//
//  EnterViewController.swift
//  Sopt22_seminar4
//
//  Created by 이혜진 on 2018. 4. 30..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit


class EnterViewController: UIViewController, UITextFieldDelegate {
    let userdefault = UserDefaults.standard
    
    @IBOutlet weak var nickNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nickNameTextField.delegate = self
    }
    
    @IBAction func pressedEnterButton(_ sender: Any) {
        enterBoard()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nickNameTextField {
            enterBoard()
        }
        return true
    }
    
    func enterBoard() {
        if nickNameTextField.text != "" {
            userdefault.set(gsno(nickNameTextField.text), forKey: "nickName")
            
            let boardVCNavi = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "boardVCNavi")
            
            self.present(boardVCNavi, animated: true, completion: nil)
        }
    }
}


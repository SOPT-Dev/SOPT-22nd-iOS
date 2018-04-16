//
//  ViewController.swift
//  Sopt22_seminar3
//
//  Created by 이혜진 on 2018. 4. 14..
//  Copyright © 2018년 hyejin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushAction(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.str = "PUSH"
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func presentAction(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.str = "PRESENT"
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    // present를 한 뷰에서 또 push를 할 필요가 있을 때 present할 뷰에 navigationController를 만들고, 그 navigation에 present합니다.
    @IBAction func presentNaviAction(_ sender: Any) {
        let navi = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Navigation1")
        
        self.present(navi, animated: true, completion: nil)
    }
    
}


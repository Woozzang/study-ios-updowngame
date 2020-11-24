//
//  CreditViewContoller.swift
//  UpDownGame
//
//  Created by Woochan Park on 2020/11/24.
//

import UIKit

class CreditViewContoller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //present = 화면에 올려 준 것 < - > dismiss
    
    @IBAction func touchUpDismissButton (_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

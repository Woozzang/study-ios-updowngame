//
//  ViewController.swift
//  UpDownGame
//
//  Created by Stephen Park on 2020/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
    }

   @IBAction  func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print(slider.value)
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }
}


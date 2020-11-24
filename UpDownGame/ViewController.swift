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
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var userValue: UILabel!
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        reset()
    }

   @IBAction  func sliderValueChanged(_ sender: UISlider){
        userValue.text = String(Int(slider.value))
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton){
        print(slider.value)
    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        reset()
    }
    
    func reset() {
        randomValue = Int.random(in: 0...30)
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.setValue(15, animated: true)
    }
    
}


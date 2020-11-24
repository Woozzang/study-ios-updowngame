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
    @IBOutlet weak var thumbValueLabel: UILabel!
    
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
        tryCount += 1
        tryCountLabel.text = "\(tryCount)/5"
        
        /*
         Reset game when user get the correct answer
         */
        if isCorrect() {
            let correctAlert = UIAlertController(title: "You win", message: "Game will be reset", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default) { (okAction) in
                self.reset()
            }
            correctAlert.addAction(okAction)
            self.present(correctAlert, animated: true, completion: nil)
        }
        
        /*
         Reset game when user run out of chance
         */
        if tryCount == 5 {
            let resetAlert = UIAlertController(title: "You lose", message: "Game will be reset", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .default) { (okAction) in
                self.reset()
            }
            resetAlert.addAction(okAction)
            self.present(resetAlert, animated: true, completion: nil)
        }
        
        /*
         Change Min/Max Value of slider and associated textLabel
         */
        if Int(slider.value) > randomValue {
            slider.maximumValue = slider.value
            maximumValueLabel.text = String(Int(slider.maximumValue))
            
        } else {
            slider.minimumValue = slider.value
            minimumValueLabel.text = String(Int(slider.minimumValue))
        }
        
        

    }
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        reset()
    }
    
    /*
     Reset Game to start point
     */
    func reset() {
        randomValue = Int.random(in: 0...30)
        tryCount = 0
        tryCountLabel.text = "0/5"
        thumbValueLabel.text = "15"
        
        slider.minimumValue = 0
        minimumValueLabel.text = String(Int(slider.minimumValue))
        
        slider.maximumValue = 30
        maximumValueLabel.text = String(Int(slider.maximumValue))
        slider.setValue(15, animated: true)
    }
    
    /*
     Check UserValue is correct
     This function have no side-effects
     */
    func isCorrect() -> Bool {
        if  Int(slider.value) == randomValue {
            return true
        }
        
        return false
    }
    
}


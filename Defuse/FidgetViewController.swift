//
//  FidgetViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/6/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import AVFoundation

class FidgetViewController: UIViewController {
    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var stepperOne: UIStepper!
    @IBOutlet weak var sliderOne: UISlider!
    
//    var lastStepperOneValue: Int?
    var soundEffect: AVAudioPlayer?
    var redValue = CGFloat.random(in:0..<1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var lastStepperOneValue = Int(stepperOne.value)

        // Do any additional setup after loading the view.
    }
    @IBAction func useSliderOne(_ sender: UISlider) {
//        var sliderOneValue = CGFloat(sender.value)
//        var redValue = CGFloat.random(in:0..<1)
        view.backgroundColor = UIColor(red: redValue, green: 1-CGFloat(sender.value), blue: CGFloat(sender.value), alpha: 1)
    }
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        let path = Bundle.main.path(forResource: "switchSound.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundEffect = try AVAudioPlayer(contentsOf: url)
            soundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    @IBAction func useStepperOne(_ sender: UIStepper) {
//        if Int(stepperOne.value) < lastStepperOneValue{
//            print("Hi")
//        } else if Int(stepperOne.value) > lastStepperOneValue{
//            print("Bye")
//        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

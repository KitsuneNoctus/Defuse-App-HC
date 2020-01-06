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
    
    var soundEffect: AVAudioPlayer = AVAudioPlayer()
    var redValue = CGFloat.random(in:0..<1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func useSliderOne(_ sender: UISlider) {
//        var sliderOneValue = CGFloat(sender.value)
//        var redValue = CGFloat.random(in:0..<1)
        view.backgroundColor = UIColor(red: redValue, green: 1-CGFloat(sender.value), blue: CGFloat(sender.value), alpha: 1)
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

//
//  AnxietyViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import AVFoundation

class AnxietyViewController: UIViewController {
    
    //Timer
    var timer: Timer?
    var timeLeft: Double = 30
//    var timerTic:Timer!
//    var num = 0.1
//    var timeLike = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeBackgroundChanger()
        
//        timerTic = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector(("setBackgroundColor")), userInfo: nil, repeats: true)
        //self.setBackgroundColor()
//        updateColor()
        
//        view.backgroundColor = UIColor(red:CGFloat.random(in:0..<1),green:0,blue:0.5,alpha: 1)

        // Do any additional setup after loading the view.
    }
    
    func timeBackgroundChanger(){
        var colorVal:Double = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { timerChange in
            colorVal += 0.1
                    if self.timeLeft <= 0{
                        self.timeLeft = 30
                        colorVal = 0
                        colorVal += 0.1
                        colorVal = colorVal * -1
        
                    }
                    self.timeLeft -= 1
            self.view.backgroundColor = UIColor(red: CGFloat(colorVal), green: 1-CGFloat(colorVal), blue: CGFloat(colorVal), alpha: 1)
                 })
    }
    
//    func setBackgroundColor(){
//        let colors = [
//            UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
//            UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
//            UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
//            UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
//            UIColor(red: 87/255, green: 141/255, blue: 155/255, alpha: 1)
//        ]
//        let randomColor = Int(arc4random_uniform(UInt32 (colors.count)))
//        view.backgroundColor = colors[randomColor]
//    }
//
//    func updateColor(){
//
//        view.backgroundColor = UIColor(red:CGFloat.random(in:0..<1),green:0,blue:0.5,alpha: 1)
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

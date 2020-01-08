//
//  AnxietyViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class AnxietyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
//        view.backgroundColor = UIColor(red:CGFloat.random(in:0..<1),green:0,blue:0.5,alpha: 1)

        // Do any additional setup after loading the view.
    }
    
    func updateColor(){
        view.backgroundColor = UIColor(red:CGFloat.random(in:0..<1),green:0,blue:0.5,alpha: 1)
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

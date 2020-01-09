//
//  AngerViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class AngerViewController: UIViewController {
    //This is for the anger view
    //Used the stuff in this link for all of the color an background code
    //https://stackoverflow.com/questions/32287237/gradually-change-background-color-in-swift
    var backgroundColours = [UIColor()]
    var backgroundLoop = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColours = [UIColor.orange, UIColor.blue, UIColor.yellow]
        backgroundLoop = 0
        self.animateBackgroundColour()

        // Do any additional setup after loading the view.
    }
    
    func animateBackgroundColour () {
        if backgroundLoop < backgroundColours.count - 1 {
            backgroundLoop += 1
        } else {
            backgroundLoop = 0
        }
        UIView.animate(withDuration: 4, delay: 0, options: UIView.AnimationOptions.allowUserInteraction, animations: { () -> Void in
                self.view.backgroundColor =  self.backgroundColours[self.backgroundLoop];
            }) {(Bool) -> Void in
                self.animateBackgroundColour();
            }
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

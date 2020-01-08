//
//  BubbleButton.swift
//  Defuse
//
//  Created by Henry Calderon on 1/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit

class BubbleButton: UIButton {
    //Mostly with help from an instructor
    override func awakeFromNib() {
        setImage(UIImage(named: "theBubbleImage"), for: .normal)
        self.addTarget(self, action: #selector(popBubble), for: UIControl.Event.touchUpInside)
    }
    
    @objc func popBubble(sender: UIButton){
        print("Pop")
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

//
//  EmotionViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/7/21.
//  Copyright © 2021 Henry Calderon. All rights reserved.
//

import UIKit

class EmotionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createNotes))
    }
    
    @objc func createNotes(){
        print("Creating Note")
    }

}

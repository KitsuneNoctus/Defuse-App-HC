//
//  HomeViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/7/21.
//  Copyright © 2021 Henry Calderon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Defuse"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

}

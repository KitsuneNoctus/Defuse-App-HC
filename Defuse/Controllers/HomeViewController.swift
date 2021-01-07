//
//  HomeViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/7/21.
//  Copyright © 2021 Henry Calderon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let fidgetButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Fidget"
        return button
    }()
    
    let notesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Notes"
        return button
    }()
    
    let angerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Anger"
        return button
    }()
    
    let anxietyButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Anxiety"
        return button
    }()
    
    let moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "More"
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont(name: label.font.fontName, size: 45)
        label.text = "Defuse"
        return label
    }()
    
    let buttonStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 20
        return stack
    }()
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        setup()
    }
    
    func setup(){
        self.view.addSubview(titleLabel)
        self.view.addSubview(buttonStack)
        buttonStack.addArrangedSubview(fidgetButton)
//        buttonStack.addArrangedSubview(angerButton)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            
            buttonStack.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 40),
//            buttonStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }

}

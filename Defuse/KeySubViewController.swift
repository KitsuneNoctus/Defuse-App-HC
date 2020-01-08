//
//  KeySubViewController.swift
//  Defuse
//
//  Created by Henry Calderon on 1/8/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import UIKit
import AVFoundation

class KeySubViewController: FidgetViewController {
    @IBOutlet weak var testSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func testSwitchUse(_ sender: Any) {
        let path = Bundle.main.path(forResource: "clickSound.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundEffect = try AVAudioPlayer(contentsOf: url)
            soundEffect?.play()
        } catch {
            // couldn't load file :(
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

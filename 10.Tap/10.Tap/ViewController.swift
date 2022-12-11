//
//  ViewController.swift
//  10.Tap
//
//  Created by silver j on 2022/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDatePicker(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}


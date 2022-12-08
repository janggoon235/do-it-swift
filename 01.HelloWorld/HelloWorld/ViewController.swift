//
//  ViewController.swift
//  HelloWorld
//
//  Created by silver j on 2022/10/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: Any) {
        lblHello.text = "안녕, " + txtName.text!
    }
    
}


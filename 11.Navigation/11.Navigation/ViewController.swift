//
//  ViewController.swift
//  11.Navigation
//
//  Created by silver j on 2022/12/27.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    

    @IBOutlet var txMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            // 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            // 바 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Bar btton"
        }
        editViewController.textMessage = txMessage.text!
        editViewController.delegate = self
    }
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }

}


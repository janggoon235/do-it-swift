//
//  ViewController.swift
//  11.Navigation
//
//  Created by silver j on 2022/12/27.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
   
    
    
    let imgOn = UIImage(named: "장은송(반명함).jpg")
    let imgOff = UIImage(named: "off.jpeg")
    var isOn = true
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = imgOn
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
        editViewController.isOn = isOn
        editViewController.delegate = self
    }
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }

}


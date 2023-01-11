//
//  ViewController.swift
//  19.PinchGesture
//
//  Created by silver j on 2023/01/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgPinch: UIImageView!
    var initialFontsize:CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        // label로 했을 때
//        if (pinch.state == UIGestureRecognizer.State.began) {
//            initialFontsize = txtPinch.font.pointSize
//
//
//        } else {
//            txtPinch.font = txtPinch.font.withSize(initialFontsize*pinch.scale)
//        }
        
        // image로 했을 때
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1
    }


}


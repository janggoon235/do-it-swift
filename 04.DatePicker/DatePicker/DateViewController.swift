//
//  ViewController.swift
//  DatePicker
//
//  Created by silver j on 2022/10/27.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    let selectTimeFormat = "yyyy-MM-dd HH:mm EEE"
    let currentTimeFormat = "yyyy-MM:dd EEE HH:mm:ss"
    let alarmTimeFormat = "hh:mm aaa"
    var count = 0
    var alarmTime = ""
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let viewFormatter = DateFormatter()
        let alarmFormatter = DateFormatter()
        
        viewFormatter.dateFormat = selectTimeFormat
        alarmFormatter.dateFormat = alarmTimeFormat
        lblPickerTime.text = "선택시간: " + viewFormatter.string(from: datePickerView.date)
        alarmTime = alarmFormatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count = count + 1
        let date = NSDate()
        
        let viewFormatter = DateFormatter()
        let alarmFormatter = DateFormatter()

        viewFormatter.dateFormat = currentTimeFormat
        alarmFormatter.dateFormat = alarmTimeFormat
        
        lblCurrentTime.text = "현재시간: " + viewFormatter.string(from: date as Date)
        
        
        if (alarmTime == alarmFormatter.string(from: date as Date)) {
            view.backgroundColor = UIColor.red
        } else {
            view.backgroundColor = UIColor.white
        }
        
    }
    
}


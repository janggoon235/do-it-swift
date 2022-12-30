//
//  AddViewController.swift
//  12.TodoList
//
//  Created by silver j on 2022/12/30.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var imageArray = [UIImage?]()
    var imageFileNames = ["clock.png", "pencil.png","cart.png"]
    var selectedIndex = 0

    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var tfAddItem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for i in 0 ..< imageFileNames.count {
            let image = UIImage(named: imageFileNames[i])
            imageArray.append(image)
        }
    }
    
    //피커뷰 컴포넌트 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 피커뷰 높이 설정
    func pickerView(_ pickerView:UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 80
    }
    
    // 피커뷰 개수 설정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileNames.count
    }
    
    //피커 뷰의 각 Row의 view 설정
    func pickerView(_ pickerView: UIPickerView, viewForRow row:Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width: 50, height: 50)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedIndex = row
    }
    
    

    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append(imageFileNames[selectedIndex])
        tfAddItem.text=""
        _=navigationController?.popViewController(animated: true)
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

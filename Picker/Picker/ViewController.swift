//
//  ViewController.swift
//  Picker
//
//  Created by nyoungy on 2022/06/18.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var imageName: UITextField!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row + 1)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0){
            landscape.image = UIImage(named: "\(row + 1).jpg")
        }
        if(component == 1){
            imageName.text = "\(row + 1).jpg"
        }
    }
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var landscape: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        pickerView.dataSource = self
        pickerView.delegate   = self
        
    }
    
 
}


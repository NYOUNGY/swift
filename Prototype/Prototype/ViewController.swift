//
//  ViewController.swift
//  Prototype
//
//  Created by nyoungy on 2022/06/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var confirmation: UIButton!
    @IBOutlet var head: UITextField!
    @IBOutlet var ID: UITextField!
    @IBOutlet var PW: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func referButton(_ sender: Any) {
        
        
        
    }
    
    
    @IBAction func confirmationAction(_ sender: Any) {

        print(ID.hasText)
        if(ID.hasText == true && PW.hasText == true) {
            head.text            = "Login Succeeded"
            head.textColor       = UIColor.white
            head.backgroundColor = UIColor.blue
        }
        else if(ID.hasText == false || PW.hasText == false) {
            if(ID.hasText == false) {
                ID.textColor       = UIColor.white
                ID.text            = "ID를 입력하세요"
                ID.backgroundColor = UIColor.red
            }
            if(PW.hasText == false) {
                PW.textColor       = UIColor.white
                PW.text            = "PW를 입력하세요"
                PW.backgroundColor = UIColor.red
            }
        }
    
    }
}

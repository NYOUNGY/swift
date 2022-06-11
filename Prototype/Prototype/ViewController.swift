//
//  ViewController.swift
//  Prototype
//
//  Created by nyoungy on 2022/06/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var confirmation: UIButton!
    @IBOutlet weak var head: UITextField!
    @IBOutlet weak var ID: UITextField!
    @IBOutlet weak var PW: UITextField!
    
   
    
    @IBOutlet var imageWindow: UIImageView!
    @IBOutlet var ec2: UIImageView!
    @IBOutlet var cloudfront: UIImageView!
    @IBOutlet var rds: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var imageArr: [String] = ["ec2", "cloudfront", "rds"]
    var cnt = 0
    
    @IBAction func referButton(_ sender: Any) {
        
        imageWindow.image = UIImage.init(named: imageArr[cnt])
        cnt += 1
        if(cnt > imageArr.count-1){
            cnt = 0
        }
        
        
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

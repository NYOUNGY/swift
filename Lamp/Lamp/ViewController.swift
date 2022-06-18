//
//  ViewController.swift
//  Lamp
//
//  Created by nyoungy on 2022/06/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var magnify: UIButton!
    @IBOutlet var onoff: UISwitch!
    @IBOutlet var lamp: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var magnify_flag: Int = 1
    
    @IBAction func magnifyAction(_ sender: UIButton) {
        if(magnify_flag == 1){
            lamp.frame.size.width = lamp.frame.size.width * 2
            lamp.frame.size.height = lamp.frame.size.height * 2
            magnify.setTitle("축소", for: .normal)
            magnify_flag = 0
        }
        
        else{
            lamp.frame.size.width = lamp.frame.size.width / 2
            lamp.frame.size.height = lamp.frame.size.height / 2
            magnify.setTitle("확대", for: .normal)
            magnify_flag = 1
        }

    }
    
    var onoff_flag: Int = 1
    
    @IBAction func onoffAction(_ sender: Any) {
        if(onoff_flag == 1){
            lamp.image = UIImage(named: "lamp_off.png")
            onoff_flag = 0
        }
        else{
            lamp.image = UIImage(named: "lamp_on.png")
            onoff_flag = 1
        }
        
    }
    
}


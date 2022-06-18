//
//  ViewController.swift
//  Clock
//
//  Created by nyoungy on 2022/06/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var clock: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: <#T##TimeInterval#>, target: <#T##Any#>, selector: <#T##Selector#>, userInfo: <#T##Any?#>, repeats: <#T##Bool#>)
    }


}


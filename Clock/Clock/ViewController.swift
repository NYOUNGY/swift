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
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(liveClock), userInfo: nil, repeats: true)
    }

    @objc func liveClock(){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        clock.text = formatter.string(from: Date())
    }
}


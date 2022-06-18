//
//  ViewController.swift
//  Clock
//
//  Created by nyoungy on 2022/06/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var clock: UITextField!
    @IBOutlet var myDate: UITextField!
    var nowtime: String = "a"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myDate.text = "시간을 선택하세요"
        //1초마다 liveClock 호출
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(liveClock), userInfo: nil, repeats: true)
        
    }


    
    @objc func liveClock(){
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "E MMM d HH:mm a"
        
        //상단 시계
        clock.text = formatter.string(from: Date())
        
        //날짜 비교용
        nowtime = formatter2.string(from: Date())
        
        if(myDate.text == nowtime){
            myDate.backgroundColor = UIColor.red
            myDate.textColor = UIColor.white
        }
    }
    
    @IBAction func datePicking(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "E MMM d HH:mm a"
        myDate.text = formatter.string(from: sender.date)
    }
    
}


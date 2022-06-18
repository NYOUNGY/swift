//
//  ViewController.swift
//  WebView
//
//  Created by nyoungy on 2022/06/18.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    @IBOutlet var search: UITextField!
    @IBOutlet var moveButton: UIButton!
    @IBOutlet var indicator: UIActivityIndicatorView!
    
    
    var home_url = URL.init(string: "http://3.39.42.141")!
    var previousPage = [URL](repeating: URL.init(string: "")!, count: 5)
    var thisPage = [URL](repeating: URL.init(string: "")!, count: 5)
    var nextPage = [URL](repeating: URL.init(string: "")!, count: 5)
    var idx = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        indicator.startAnimating()
        
        let request = URLRequest.init(url: home_url)
        
        thisPage[idx] = home_url
        idx += 1
        if(idx == 5)
        webView.load(request)
        
        indicator.stopAnimating()
    }
    
    var successFlag = 0

    func loadpage (urlString: String){
        indicator.startAnimating()
        
        if(urlString.contains("http")){
            let url = URL.init(string: search.text!)!
            previousPage = thisPage
            thisPage = url
            let request = URLRequest.init(url: url)
            webView.load(request)
            successFlag = 1
            
            indicator.stopAnimating()
        }
        else{
            let url = URL.init(string: "https://"+search.text!)!
            previousPage = thisPage
            thisPage = url
            let request = URLRequest.init(url: url)
            webView.load(request)
            successFlag = 2
            
            indicator.stopAnimating()
        }
    }

    @IBAction func move(_ sender: Any) {
        successFlag = 0
        loadpage(urlString: search.text!)
        print(successFlag)
        
    }
    
}


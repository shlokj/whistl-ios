//
//  ViewController.swift
//  Whistl
//
//  Created by Shlok Jhawar on 2/26/22.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    var webView : WKWebView!
    
    override func loadView()
    {
        let webConfig = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfig)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.apple.com") // TODO: replace with our site
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }


}


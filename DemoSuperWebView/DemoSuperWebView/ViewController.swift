//
//  ViewController.swift
//  DemoSuperWebView
//
//  Created by 金宝泉 on 16/7/23.
//  Copyright © 2016年 x298017064010. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let windowContainer = APIWindowContainer.init(url: "widget://index.html", name: "root", userInfo: nil)
        windowContainer.startLoad()
        presentViewController(windowContainer, animated: true, completion: nil)
    }
}


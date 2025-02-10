//
//  ViewController.swift
//  LuckyPropertyWrapper
//
//  Created by 汤俊杰 on 08/23/2024.
//  Copyright (c) 2024 汤俊杰. All rights reserved.
//

import UIKit
import LuckyPropertyWrapper

class ViewController: UIViewController {
    
    @KeychainProperty(key: "token", defaultValue: nil)
    var msg: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(msg)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        msg = "Hello world!"
        print("write success")
    }
    
}


//
//  ViewController.swift
//  2FA
//
//  Created by apple on 18/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var twoFA: UILabel!
    var key:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        key = 9975
        var dupKey = key
        var date = Date()
        var interval = Int(date.timeIntervalSince1970)
        interval = interval+key!
        
        var count = (String(describing: key)).count
        var sum = 0
        var index = 0
        
//        while dupKey != 0
//        {
//            sum = sum + (dupKey! % 10)
//           // print((dupKey! % 10))
//            dupKey = dupKey! / 10
//        }
//        print(sum)
//        if (String(sum)).count > 1
//        {
//            sum = (sum % 10) + (sum / 10)
//        }
//        print(sum)
//        var mainPWD = ""
//        print(interval)
//        print("--------------------------------")
        while  (String(interval)).count > 6{
            interval = interval / key!
            print(interval)
        }
        print(interval)
    }

    func returnKeyDigit()
    {}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


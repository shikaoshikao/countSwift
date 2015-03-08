//
//  ViewController.swift
//  countSwift
//
//  Created by yoshikik on 2015/03/08.
//  Copyright (c) 2015年 Yoshiki Kawakita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var minus: UIButton!
    
    var number : Int = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plus (sender: AnyObject){
        number = number+1
        label.text = NSString(format: "%d", number)
        if number >= 10 {
            label.textColor = UIColor.redColor()
            plus.hidden = true
        } else if number > -10{
            label.textColor = UIColor.blackColor()
            minus.hidden = false
        }else if number <= -10 {
            label.textColor = UIColor.blueColor()
        }
        
    }
    @IBAction func minus (sender: AnyObject){
        number = number-1
        label.text = NSString(format: "%d", number)
        if number <= -10 {
            label.textColor = UIColor.blueColor()
            minus.hidden = true
        }
        else if number < 10 {
            label.textColor = UIColor.blackColor()
            plus.hidden = false
        }
        else if number >= 10 {
            label.textColor = UIColor.redColor()
        }
    }

}


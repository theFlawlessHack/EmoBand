//
//  ViewController.swift
//  EmoBand
//
//  Created by Jessica Joseph on 2/6/16.
//  Copyright © 2016 Jessica Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var `continue`: UIButton!
    @IBOutlet weak var connected: UILabel!
    @IBOutlet weak var connecting: UILabel!
    
    @IBAction func connect(sender: AnyObject) {
        connecting.hidden = false

        connected.hidden = false
        sleep(1)
        `continue`.hidden = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}


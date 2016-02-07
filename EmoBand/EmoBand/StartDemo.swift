//
//  StartDemo.swift
//  EmoBand
//
//  Created by Jessica Joseph on 2/6/16.
//  Copyright © 2016 Jessica Joseph. All rights reserved.
//


import UIKit

class StartDemo: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var myTextField : UITextField!

//    @IBOutlet weak var fem: UIButton!
//    @IBOutlet weak var ma: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self;

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
  
}
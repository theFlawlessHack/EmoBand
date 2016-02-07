//
//  Main.swift
//  EmoBand
//
//  Created by Jessica Joseph on 2/6/16.
//  Copyright © 2016 Jessica Joseph. All rights reserved.
//

import UIKit

class Main: UIViewController, UITextViewDelegate{
    
    @IBOutlet weak var myTextField : UITextView!
    @IBOutlet weak var timestamp : UITextView!
    
    //    @IBOutlet weak var fem: UIButton!
    //    @IBOutlet weak var ma: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextField.delegate = self;
        
        // get the current date and time
        let currentDateTime = NSDate()
        
        // initialize the date formatter and set the style
        let formatter = NSDateFormatter()
        formatter.timeStyle = NSDateFormatterStyle.MediumStyle
        formatter.dateStyle = NSDateFormatterStyle.LongStyle
        
        // get the date time String from the date object
        formatter.stringFromDate(currentDateTime) // O
        
        timestamp.text = "\(formatter.stringFromDate(currentDateTime))"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    
    
}

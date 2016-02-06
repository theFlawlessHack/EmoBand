//
//  ViewController.swift
//  EmoBand
//
//  Created by Jessica Joseph on 2/6/16.
//  Copyright © 2016 Jessica Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MSBClientManagerDelegate {
    
    @IBOutlet weak var txtOutput: UITextView!
    @IBOutlet weak var accelLabel: UILabel!
    weak var client: MSBClient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MSBClientManager.sharedManager().delegate = self
        if let client = MSBClientManager.sharedManager().attachedClients().first as? MSBClient {
            self.client = client
            MSBClientManager.sharedManager().connectClient(self.client)
            print("Please wait. Connecting to Band...")
        } else {
            print("Failed! No Bands attached.")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark - Client Manager Delegates
    func clientManager(clientManager: MSBClientManager!, clientDidConnect client: MSBClient!) {
        print("Band connected.")
    }
    
    func clientManager(clientManager: MSBClientManager!, clientDidDisconnect client: MSBClient!) {
        print(")Band disconnected.")
    }
    
    func clientManager(clientManager: MSBClientManager!, client: MSBClient!, didFailToConnectWithError error: NSError!) {
        print("Failed to connect to Band.")
        print(error.description)
    }

}


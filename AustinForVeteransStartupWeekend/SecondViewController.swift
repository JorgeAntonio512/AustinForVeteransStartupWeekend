//
//  SecondViewController.swift
//  AustinForVeteransStartupWeekend
//
//  Created by George Pazdral (work) on 9/29/18.
//  Copyright © 2018 George Pazdral (work). All rights reserved.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {

    @IBOutlet var thanks: UITextView!
    @IBOutlet var instructions: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        Database.database().reference().child("welcomePage").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let username = value?["thanks"] as? String ?? ""
            self.thanks.text = username
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
        
        Database.database().reference().child("welcomePage").observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let usernamez = value?["instructions"] as? String ?? ""
            self.instructions.text = usernamez
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
        
        
    }

    
    
    

}


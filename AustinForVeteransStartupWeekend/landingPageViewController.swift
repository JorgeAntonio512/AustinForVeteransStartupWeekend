//
//  landingPageViewController.swift
//  AustinForVeteransStartupWeekend
//
//  Created by George Pazdral (work) on 10/1/18.
//  Copyright © 2018 George Pazdral (work). All rights reserved.
//

import Foundation
import UIKit
import MapKit
import Firebase


class landingPageViewController: UIViewController {
    
    @IBOutlet weak var yourLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.yourLabel.alpha = 0.0
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.yourLabel.alpha = 0.0
        }, completion: {
            finished in
            
            if finished {
                //Once the label is completely invisible, set the text and fade it back in
             
                
                // Fade in
                UIView.animate(withDuration: 6.0, delay: 0.0, options: .curveEaseIn, animations: {
                    self.yourLabel.alpha = 1.0
                }, completion: {
                        finished in
                    
                    if finished {
                        self.performSegue(withIdentifier: "toNav", sender: Any?.self)
                    }
                    
                }
                               )
            }
        })
    
    
    }
}

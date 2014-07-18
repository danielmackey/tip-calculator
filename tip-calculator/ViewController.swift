//
//  ViewController.swift
//  tip-calculator
//
//  Created by Daniel Mackey on 7/17/14.
//  Copyright (c) 2014 Daniel Mackey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var totalTextField:   UITextField
    @IBOutlet var taxPercentSlider: UISlider
    @IBOutlet var taxPercentLabel:  UILabel
    @IBOutlet var resultsTextView:  UITextView
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTapped(sender: AnyObject) {
        
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        
    }

}


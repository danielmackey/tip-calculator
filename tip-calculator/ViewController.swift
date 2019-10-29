//
//  ViewController.swift
//  tip-calculator
//
//  Created by Daniel Mackey on 7/17/14.
//  Copyright (c) 2014 Daniel Mackey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPercentSlider: UISlider!
    @IBOutlet weak var taxPercentLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    
    let tipCalculator = TipCalculatorModel(total: 33.25, taxPercent: 0.06)
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshUI() {
        totalTextField.text = String(tipCalculator.total)
        taxPercentSlider.value = Float(tipCalculator.taxPercent) * 100.0
        taxPercentLabel.text = "Tax Percentage (\(Int(taxPercentSlider.value)))%:"
        resultsTextView.text = ""
    }
    
    @IBAction func calculateTapped() {
        guard
          let text = totalTextField.text,
          let doubleValue = Double(text)
          else { return }
        
        tipCalculator.total = doubleValue
        
        let possibleTips = tipCalculator.returnPossibleTips()
        var results = ""
        
        for(tipPrecent, tipValue) in possibleTips {
            let prettyTipValue = String(format: "%.2f", tipValue)
            results += "\(tipPrecent)%: $\(prettyTipValue)\n"
        }
        
        resultsTextView.text = results
    }
    
    @IBAction func taxPercentageChanged() {
        tipCalculator.taxPercent = Double(taxPercentSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped() {
        totalTextField.resignFirstResponder()
    }
    
    @IBAction func totalChanged() {
        guard
          let text = totalTextField.text,
          let doubleValue = Double(text)
          else { return }
        
        tipCalculator.total = doubleValue
    }

}


//
//  TipCalculatorModel.swift
//  tip-calculator
//
//  Created by Daniel Mackey on 7/17/14.
//  Copyright (c) 2014 Daniel Mackey. All rights reserved.
//

import Foundation

class TipCalculatorModel {
  
  var total: Double
  var taxPercent: Double
  var subtotal: Double {
    get {
      return total / (taxPercent + 1)
    }
  }
  
  init(total: Double, taxPercent: Double) {
    self.total = total;
    self.taxPercent = taxPercent;
  }
  
  func calculateTipWithTipPercent(tipPercent:Double) -> Double {
    return subtotal * tipPercent;
  }
  
  func returnPossibleTips() -> [Int: Double] {
    let possibleTipsInferred = [0.15, 0.18, 0.20]
    let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
    
    var retval = [Int: Double]()
    for possibleTip in possibleTipsInferred {
      let intPct = Int(possibleTip * 100)
      retval[intPct] = calculateTipWithTipPercent(possibleTip)
    }
    return retval
  }
}
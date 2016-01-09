//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Justine Gartner on 1/8/16.
//  Copyright © 2016 Justine Kay. All rights reserved.
//

import Foundation

class TipCalulatorModel {
    
    var total: Double
    var taxPct: Double
    
    var subtotal: Double {
        
        get {
            
            return total / (taxPct + 1)
        
        }
    }
    
    init(total: Double, taxPct: Double) {
        
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithPct(tipPct: Double) -> Double {
        
        return subtotal * tipPct
    }
    
    
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTips = [0.18, 0.20, 0.22]
        
        var retVal = [Int: Double]()
        
        for possibleTip in possibleTips {
            
            let intPct = Int(possibleTip * 100)
            
            retVal[intPct] = calcTipWithPct(possibleTip)
        }
        
        return retVal
    }
}

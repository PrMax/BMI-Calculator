//
//  CalculatorBrine.swift
//  Calculator
//
//  Created by Batman 👀 on 02.02.2023.
//

import Foundation

struct CalculatorBrine {
    
    var bim: Float?
    
    mutating func calculateBMI (height: Float , weight: Float) {
        bim = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        
        //guard bim != nil else { return "Error"}
        let getBMI = String(format: "%.1f", bim ?? "Error" )
        return getBMI
    }
    
}

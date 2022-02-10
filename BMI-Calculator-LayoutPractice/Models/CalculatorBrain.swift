//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Alicia Windsor on 09/02/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    var bmiAdvice : String?
    var bmiColour : UIColor?
    
    let defaultAdvice = "No advice for you hehe"
    let defaultColour : UIColor = .gray
    
    func getBMIValue() -> String {
        
        let bmiTo1dp = String( format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1dp
    }
    
    mutating func calculateBmi (weight: Float, height : Float){
        
        let bmiValue = weight/pow(height, 2)
 
  
        if bmiValue < 18.5{
            bmiAdvice = "Eat more pies!"
            bmiColour = .cyan
        }else if bmiValue < 24.9 {
            bmiAdvice = "Fit as a fiddle!"
            bmiColour = .green
        }else{
            bmiAdvice = "Eat less pies!"
            bmiColour = .red
        }
        
        bmi = BMI(value: bmiValue, advice: bmiAdvice ?? defaultAdvice, colour: bmiColour ?? defaultColour)
        
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? defaultAdvice
    }
    
    func getColour () -> UIColor {
        return bmi?.colour ?? defaultColour
    }
}

//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Alicia Windsor on 09/02/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi : String?
    
    mutating func calculateBmi (weight: Float, height : Float){
        bmi = String( format: "%.1f", weight/pow(height, 2))
        
    }
}

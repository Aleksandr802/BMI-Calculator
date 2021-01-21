//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Aleksandr Seminov on 21.10.2020.
//  Copyright © 2020 Aleksandr802. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "Zzzz..."
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return bmiColor
    }
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Watch out for drafts!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Well done!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else if bmiValue < 30 {
            bmi = BMI(value: bmiValue, advice: "It's time to go to the gym!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Need to eat less!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
    
}

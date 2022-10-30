//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mehdi Ali on 16/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(weight:Float, height:Float){
        let bmiValue = round(weight/pow(height,2) * 100)/100.0
        let advise: String
        let color: UIColor
        
        if bmiValue < 18.5 {
            advise = "Eat More Pies!"
            color = UIColor(red: 1.00, green: 0.69, blue: 0.22, alpha: 1.00)
        }
        else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            advise = "Fit as a Fiddle!"
            color = UIColor(red: 0.16, green: 0.20, blue: 0.38, alpha: 1.00)
        }
        else {
            advise = "Eat Less Pies!"
            color = UIColor(red: 0.84, green: 0.11, blue: 0.31, alpha: 1.00)
        }
        
        bmi = BMI(value: bmiValue, advise: advise, color: color)
    }
    
    func getBMIValue() -> String {
        return String(bmi?.value ?? 0.0)
    }
    func getBMIAdvise() -> String {
        return bmi?.advise ?? "No advise"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .blue
    }
}

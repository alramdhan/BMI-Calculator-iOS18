//
//  CalculatorBrain.swift
//  BMI-Calculator-iOS18
//
//  Created by Dika Alfarell on 13/07/25.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue >= 24.9 {
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else if bmiValue < 18.5 {
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No Advice."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    func getBMI() -> BMI {
        return bmi!
    }
}

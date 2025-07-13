//
//  ViewController.swift
//  BMI-Calculator-iOS18
//
//  Created by Dika Alfarell on 11/07/25.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print("height \(String(format: "%.2f", sender.value))")
        let value = String(format: "%.2f", sender.value)
        heightLabel.text = "\(value)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print("weight \(Int(sender.value))")
        let value = Int(sender.value)
        weightLabel.text = "\(value)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        print("height \(height)")
        print("weight \(weight)")
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
//            destinationVC.bmiValue = calculatorBrain.getBMIValue()
//            destinationVC.advice = calculatorBrain.getBMIAdvice()
//            destinationVC.color = calculatorBrain.getColor()
            destinationVC.bmi = calculatorBrain.getBMI()
        }
    }
}


//
//  ViewController.swift
//  BMI-Calculator-iOS18
//
//  Created by Dika Alfarell on 11/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print("height \(String(format: "%.2f", sender.value))")
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print("weight \(Int(sender.value))")
        weightLabel.text = "\(Int(sender.value))Kg"
    }
}


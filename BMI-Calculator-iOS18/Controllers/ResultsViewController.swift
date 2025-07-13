//
//  ResultsViewController.swift
//  BMI-Calculator-iOS18
//
//  Created by SKK Staf on 12/07/25.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = String(format: "%.1f", bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}

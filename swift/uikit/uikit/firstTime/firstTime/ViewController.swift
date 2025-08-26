//
//  ViewController.swift
//  firstTime
//
//  Created by Manik Lakhanpal on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var value: UILabel!
    
    @IBOutlet weak var heightInputFiled: UITextField!
    
    @IBOutlet weak var weightInputField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        
        let weightInString = weightInputField.text ?? ""
        let weight = Double(weightInString) ?? 0
        
        let heightInString = heightInputFiled.text ?? ""
        let height = Double(heightInString) ?? 0
        
        let bmi = weight / (height * height)
        
        value.text = "BMI is \(bmi)"
    }
    
}


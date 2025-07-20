//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Tanish on 14/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Weight_TextBox: UITextField!
    

    
    @IBOutlet weak var Height_TextBox: UITextField!
    
    
    
    @IBOutlet weak var BMI_Calculate: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        @IBAction func Calculate(_ sender: Any) {
            let weightString = Weight_TextBox.text ?? ""
            let weight = Double(weightString) ?? 0
            
            let heightString = Height_TextBox.text ?? ""
            let height = Double(heightString) ?? 0
            
            let bmi = weight / (height * height)
            
            BMI_Calculate.text = "BMI is \(bmi)"

            
        }
        
    }





//
//  ViewController.swift
//  ControlinAction_Lab
//
//  Created by Tanish on 16/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var InputText: UITextField!
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func SetButton(_ sender: UIButton) {
        let text = InputText.text
        OutputLabel.text = text
    }
    
    
    @IBAction func ClearButton(_ sender: UIButton) {
        InputText.text = " "
        OutputLabel.text = " "
    }
    
    
}


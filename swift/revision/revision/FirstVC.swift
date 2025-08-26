//
//  ViewController.swift
//  revision
//
//  Created by Manik Lakhanpal on 11/08/25.
//

import UIKit

class FirstVC: UIViewController {
    @IBOutlet weak var SliderOutlet: UISlider!
    @IBOutlet weak var HeadingLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButton(_ sender: Any) {
        performSegue(withIdentifier: "Second", sender: sender)
    }
    
    @IBSegueAction func passDataToSecond(_ coder: NSCoder) -> SecondVC? {
        return SecondVC(coder: coder, label: HeadingLabel.text!, slider: Double(SliderOutlet.value))
    }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue) {
        guard let secondVC = segue.source as? SecondVC else {
            return
        }
        
        HeadingLabel.text = secondVC.HeadingLabel.text
        SliderOutlet.value = Float(secondVC.SliderValue.value)
        
    }
    
}


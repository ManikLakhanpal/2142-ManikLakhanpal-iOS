//
//  ViewController.swift
//  D2
//
//  Created by Manik Lakhanpal on 15/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var my_label: UILabel!
    @IBOutlet weak var swtichValue: UISwitch!
    
    @IBAction func tap_me(_ sender: Any) {
        if my_label.text == "Manik" {
            my_label.text = "Lakhanpal"
        } else {
            my_label.text = "Manik"
        }
    }
    
    @IBAction func `switch`(_ sender: Any) {
        if swtichValue.isOn {
            my_label.textColor = .red
        } else {
            my_label.textColor = .green
        }
    }
}


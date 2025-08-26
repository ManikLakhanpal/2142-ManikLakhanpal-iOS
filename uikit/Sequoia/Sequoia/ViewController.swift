//
//  ViewController.swift
//  Sequoia
//
//  Created by Manik Lakhanpal on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    @IBAction func goToYellowButton(_ sender: Any) {
        if toggleSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem
//
//    }
    

}


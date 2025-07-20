//
//  ViewController.swift
//  SEGUEClassRoom
//
//  Created by Tanish on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func
    unwindToRed(unwinfSegue:UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textfield.text
    }
    

}


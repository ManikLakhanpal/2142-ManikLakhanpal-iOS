//
//  ViewController.swift
//  viewControllerLife
//
//  Created by Manik Lakhanpal on 22/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

        print("Main view aa gaya")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Main view gaya")
    }


}


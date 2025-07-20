//
//  ViewController.swift
//  UiKitClassRoom
//
//  Created by Tanish on 15/07/25.
//

import UIKit

class ViewController: UIViewController {
    // Properties go here
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Methods go here
    
        @IBAction func tongleSwitch(_ sender: UISwitch) {
            if sender.isOn{
                print("Nice Choice")
            } else {
                print("Bad choice")
            }
        }
    
    
    
    @IBAction func textTwo(_ sender: UITextField) {
         
            if let text = sender.text {
                print(text)
            }
        }
    }

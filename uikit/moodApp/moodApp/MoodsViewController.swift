//
//  MoodsViewController.swift
//  moodApp
//
//  Created by Manik Lakhanpal on 07/08/25.
//

import UIKit

class MoodsViewController: UIViewController {
    
    var mood: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Moods"

        // Do any additional setup after loading the view.
    }

    @IBAction func moodButtons(_ sender: UIButton) {
        if let mood = sender.titleLabel?.text {
            self.mood = mood
            print(mood)
            
            performSegue(withIdentifier: "Energy", sender: sender)
        }
    }
    
    @IBSegueAction func EnergySegue(_ coder: NSCoder) -> EnergyViewController? {
        return EnergyViewController(coder: coder, mood: mood)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

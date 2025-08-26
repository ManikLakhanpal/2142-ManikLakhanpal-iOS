//
//  EnergyViewController.swift
//  moodApp
//
//  Created by Manik Lakhanpal on 07/08/25.
//

import UIKit

class EnergyViewController: UIViewController {
    
    var mood: String?
    var energy: String?
    
    init?(coder: NSCoder, mood: String? = nil, energy: String? = nil) {
        
        self.mood = mood
        self.energy = energy
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Energy"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func energyButton(_ sender: UIButton) {
        if let energy = sender.titleLabel?.text {
            self.energy = energy
            print(energy)
            
            performSegue(withIdentifier: "Result", sender: sender)
        }
    }
    
    
    @IBSegueAction func ResultSegue(_ coder: NSCoder) -> ResultViewController? {
        return ResultViewController(coder: coder, mood: mood, energy: energy)
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

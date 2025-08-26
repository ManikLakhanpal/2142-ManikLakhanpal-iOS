//
//  ResultViewController.swift
//  moodApp
//
//  Created by Manik Lakhanpal on 07/08/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var mood: String?
    var energy: String?
    
    @IBOutlet weak var ResultLabel: UILabel!
    
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
        ResultLabel.text = "\(mood!) \(energy!)"
        // Do any additional setup after loading the view.
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

//
//  SecondVC.swift
//  revision
//
//  Created by Manik Lakhanpal on 11/08/25.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var HeadingLabel: UILabel!
    @IBOutlet weak var SliderValue: UISlider!
    
    var labelData: String?
    var sliderData: Double?
    
    init?(coder: NSCoder, label: String, slider: Double) {
        self.labelData = label
        self.sliderData = slider
        
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HeadingLabel.text = labelData
        SliderValue.value = Float(sliderData ?? 0)
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

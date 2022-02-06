//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var heightVal = "1.5"
    var weightVal = "100"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightVal = String(format: "%.2f", sender.value)
        print(String(format: "%.2f", sender.value)) //rounding to 2dp
        updateUI()
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightVal = String(format: "%.0f", sender.value)
        //print(round(sender.value * 100)/100.0)//another method for 2dp
        print(Int(sender.value)) //no decimals
        updateUI()
    }
    
    func updateUI (){
        heightLabel.text = "\(heightVal) m"
        weightLabel.text = "\(weightVal) kg"
    }

   


}


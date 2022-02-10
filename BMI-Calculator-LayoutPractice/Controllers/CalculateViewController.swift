//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    //slider values stored here
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var weight: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)

        //print(String(format: "%.2f", sender.value))
        //rounding to 2dp
     
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightLabel.text = String(format: "%.0f", sender.value)
        
        //print(round(sender.value * 100)/100.0)
        //another method for 2dp
        //print(Int(sender.value)) //no decimals
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //BODMAS, order of operations is used in programming
        
       calculatorBrain.calculateBmi(weight: weight.value, height: height.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController //specify data type that destination will be. this is called DOWNCASTING.
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.colour = calculatorBrain.getColour()
            
        }
    }
   


}


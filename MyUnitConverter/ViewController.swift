//
//  ViewController.swift
//  MyUnitConverter
//
//  Created by Malvern Madondo on 9/5/17.
//  Copyright © 2017 Malvern Madondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FarhenheitLabel: UITextField!

    @IBOutlet weak var CalculationLabel: UILabel!
    @IBOutlet weak var CelsiusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blue  //background color
        
    }

    @IBAction func didTapConvert(_ sender: Any) {
        let tempF = Double(FarhenheitLabel.text!) ?? 0
        let tempC = (tempF - 32.0) / 1.8
        
        CelsiusLabel.text = String(format: "%.1f", tempC)
        let calculation = "(" + FarhenheitLabel.text! + " - 32.0)" + "/ 1.8"
        CalculationLabel.text = calculation + " = " + CelsiusLabel.text!
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


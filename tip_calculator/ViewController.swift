//
//  ViewController.swift
//  tip_calculator
//
//  Created by Max Cohen on 1/8/19.
//  Copyright © 2019 Max Cohen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Tip Calculator"
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultValue = defaults.integer(forKey: "default")
        tipControl.selectedSegmentIndex = defaultValue
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
       
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    
}


//
//  SettingsViewController.swift
//  tip_calculator
//
//  Created by Max Cohen on 1/9/19.
//  Copyright © 2019 Max Cohen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var percentageOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultValue = defaults.integer(forKey: "default")
        percentageOutlet.selectedSegmentIndex = defaultValue
    }
    
    @IBAction func defaultPercentage(_ sender: Any) {
        let defaults = UserDefaults.standard
        let tipPercentages = [0.18, 0.2, 0.25]
        defaults.set(percentageOutlet.selectedSegmentIndex, forKey: "default")
        defaults.synchronize()
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


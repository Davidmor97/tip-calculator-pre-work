//
//  ViewController.swift
//  Leave a Tip
//
//  Created by David Morales on 8/19/20.
//  Copyright © 2020 David Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountLabel.text!) ?? 0
    
        let tipPercentage = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentage[tipPercentageControl.selectedSegmentIndex]
        
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
}


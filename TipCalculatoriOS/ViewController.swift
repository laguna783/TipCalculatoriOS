//
//  ViewController.swift
//  TipCalculatoriOS
//
//  Created by Giancarlos Alvarado on 8/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculateTipButton: UIButton!
    
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var tipPercentage: UITextField!

  
    @IBOutlet weak var tipAmount: UILabel!
    
    @IBOutlet weak var billTotal: UILabel!
    
    @IBAction func calculateTipButton(_ sender: Any) {

        let billAmount:Double = Double(billAmount.text!)!
               
               let tipAmountText:Double = (Double(tipPercentage.text!)! / 100) * billAmount
               tipAmount.text = String(format: "$%.02f", tipAmountText)
               
               billTotal.text = String(format: "$%.02f", billAmount + tipAmountText)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}






//
//  ViewController.swift
//  Speedy Calc
//
//  Created by Timmy WInz on 6/6/22.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var resultLabel: UILabel!
    // label for the results of the calculations
    
    @IBOutlet weak var kToMTextfield: UITextField!
    // text field to enter kph to convert to mph
    
    @IBOutlet weak var mToKTextfield: UITextField!
    // text field to enter mph to convert to kph
    
    @IBAction func convertToMPH(_ sender: Any) {
        
        let numberString = kToMTextfield.text!
        let number = Double(numberString)
        
        let mileResult = (number!) * 0.621371
        let roundedMile = round(mileResult * 10) / 10
        
        resultLabel.text = "\(numberString) kilometers per hour is equivalent to \(String(roundedMile)) miles per hour."
    }
    // converts the KPH number from the textfield into MPH
    
    @IBAction func convertToKPH(_ sender: Any) {
        
        let numberString = mToKTextfield.text!
        let number = Double(numberString)
        
        let kilometerResult = (number!) * 1.60934
        let roundedCelsius = round(kilometerResult * 10) / 10
        
        resultLabel.text = "\(numberString) miles per hour is equivalent to is \(String(roundedCelsius)) kilometers per hour."
        
    }
    // converts the MPH number from the textfield into KPH
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mToKTextfield.delegate = self
        kToMTextfield.delegate = self
    }


    func textFieldShouldClear(_ textField: UITextField) -> Bool {
         resultLabel.text = ""
        
        return true

}

}


//
//  ViewController.swift
//  Calculator
//
//  Created by Sergey Kozak on 20/09/2017.
//  Copyright © 2017 Centennial. All rights reserved.
//
//  Assignment 1 - Calculator version 0.1

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    var screenValue = "0"
    var operand1 = 0.0
    var operand2 = 0.0
    var operation = ""
    
    
    // Outlets
    
    @IBOutlet weak var screenLabel: UILabel!
    
 
    // Actions
    // Clear button
    
    @IBAction func clearButton(_ sender: UIButton) {
        screenLabel.text = "0"
        operand1 = 0.0
    }
    
    // Numeric buttons
    
    @IBAction func numberButton(_ sender: UIButton) {
        
        if screenLabel.text! == "0" {
            screenLabel.text = sender.titleLabel?.text!
        } else if screenValue != "0" {
            screenLabel.text = sender.titleLabel?.text!
            screenValue = "0"
            print("Operand 1: \(operand1)")
        } else {
            screenLabel.text = screenLabel.text! + (sender.titleLabel?.text)!
        }
    }
    
    // Decimal button
    // If screen value can be converted into an integer than add a "."
    
   @IBAction func decimalButton(_ sender: UIButton) {
    if Int(screenLabel.text!) != nil {
        screenLabel.text = screenLabel.text! + "."
    } else {
        print("Decimal point already there")
    }
    }
    
    // Operations
    
    @IBAction func operationButton(_ sender: UIButton) {
        operand1 = Double(screenLabel.text!)!
        screenValue = String(operand1)
        operation = (sender.titleLabel?.text!)!
    }
    
    
    
    @IBAction func equalsButton(_ sender: UIButton) {
        operand2 = Double(screenLabel.text!)!
        print("Operand 2: \(operand2)")
        switch operation != "" {
        case operation == "+" :
            screenLabel.text = String(operand1 + operand2)
        case operation == "-" :
            screenLabel.text = String(operand1 - operand2)
        case operation == "*" :
            screenLabel.text = String(operand1 * operand2)
        case operation == "/" :
            screenLabel.text = String(operand1 / operand2)
        default:
        print("result shown")
        }
    }
    
    
    


}


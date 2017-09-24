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

   
    var screenValue = 0.0
    var operand1 = 0.0
    var operand2 = 0.0
    var operation = ""
    
    
    // Outlets
    
    @IBOutlet weak var screen: UILabel!
    
 
    // Actions
    // Clear button
    
    @IBAction func clearButton(_ sender: UIButton) {
        screenValue = 0.0
        screen.text = String(Int(screenValue))
    }
    
    // Numeric buttons
    
    @IBAction func numberButton(_ sender: UIButton) {
     
        if screenValue == 0.0 {
            screen.text = sender.titleLabel?.text
            screenValue = Double(screen.text!)!
            operand1 = Double(screen.text!)!
            print("Operand 1 is \(operand1)")
        } else {
            screenValue = Double(screen.text!)!
            screen.text = screen.text! + (sender.titleLabel?.text)!
            operand1 = Double(screen.text!)!
            print("Operand 1 is \(operand1)")
        }
    }
    
    // Decimal button
    // If screen value can be converted into an integer than add a "."
    
   @IBAction func decimalButton(_ sender: UIButton) {
    if Int(screen.text!) != nil {
        screen.text = screen.text! + "."
    } else {
        print("Decimal point already there")
    }
    }
    
    // Operations
    
    @IBAction func operationButton(_ sender: UIButton) {
        operation = (sender.titleLabel?.text!)!
        operand2 = Double(screen.text!)!
        screenValue = 0.0
        print("operaton \(operation), screenvalue \(screenValue), operand 1 \(operand1), operand 2 \(operand2)")
       
    }
    
    
    
    @IBAction func equalsButton(_ sender: UIButton) {
        
        switch operation != "" {
        case operation == "+":
            screen.text = String(operand1 + operand2)
            screenValue = 0.0
        case operation == "-":
            screen.text = String(operand2 - operand1)
            screenValue = 0.0
        case operation == "*":
            screen.text = String(operand1 * operand2)
            screenValue = 0.0
        case operation == "/":
            screen.text = String(operand2 / operand1)
            screenValue = 0.0
        default:
            print(screenValue)
        }
        
    }
    
    
    


}


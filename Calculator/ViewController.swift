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

   // Variables
    
    var screenValue = 0.0
    var number1 = 0.0
    var number2 = 0.0
    var operation = ""
    
    // Functions for mathematic operations
    
    func addition (a: Double, b: Double) -> String {
        return String(a+b)
    }
    
    func subtraction (a: Double, b: Double) -> String {
       return String(a-b)
    }
    
    func multiplication(a: Double, b: Double) -> String {
        return String(a*b)
    }
    
    func division (a: Double, b: Double) -> String {
        if b != 0 {
            return String(a/b)
        } else {
            return "Error!"
        }
    }
    
    func clear () -> String {
        number1 = 0
        number2 = 0
        screenValue = 0
        screen.text = "0"
        return screen.text!
    }
    
    
    // Outlets
    
    @IBOutlet weak var screen: UILabel!
    
 
    // Actions
    // Clear button
    
    @IBAction func clearButton(_ sender: UIButton) {
        screenValue = 0.0
        number1 = 0.0
        number2 = 0.0
        screen.text = "0"
    }
    
    
    // Numeric buttons
    
    @IBAction func numberButton(_ sender: UIButton) {
     
        if screenValue == 0.0 {
            screen.text = sender.titleLabel?.text
            screenValue = Double(screen.text!)!
        } else {
            screenValue = Double(screen.text!)!
            screen.text = screen.text! + (sender.titleLabel?.text)!
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
   
    
    // Operations - currently works like Equals!
    
    @IBAction func operationButton(_ sender: UIButton) {
        
        if number1 == 0 {
            operation = (sender.titleLabel?.text)!
            number1 = Double(screen.text!)!
            screenValue = 0
        } else {
            if number2 == 0 {
                number2 = number1
                number1 = Double(screen.text!)!
            } else {
                print("already have both numbers")
            }
        }
        screen.text = addition(a: number1, b: number2)
        screenValue = 0
        number2 = 0
    }
    
    
    
    
    @IBAction func equalsButton(_ sender: UIButton) {
        
        if number2 == 0.0 {
            number2 = Double(screen.text!)!
        
        switch operation != "" {
        case operation == "+":
            screen.text = addition(a: number1, b: number2)
            screenValue = 0.0
        case operation == "-":
            screen.text = subtraction(a: number1, b: number2)
            screenValue = 0.0
        case operation == "*":
            screen.text = multiplication(a: number1, b: number2)
            screenValue = 0.0
        case operation == "/":
            screen.text = division(a: number1, b: number2)
            screenValue = 0.0
        default:
            print(screenValue)
        }
        } else {
            switch operation != "" {
            case operation == "+":
                screen.text = addition(a: number1, b: number2)
                screenValue = 0.0
            case operation == "-":
                screen.text = subtraction(a: number1, b: number2)
                screenValue = 0.0
            case operation == "*":
                screen.text = multiplication(a: number1, b: number2)
                screenValue = 0.0
            case operation == "/":
                screen.text = division(a: number1, b: number2)
                screenValue = 0.0
            default:
                print(screenValue)
        }
        }
    }
    
    
    


}


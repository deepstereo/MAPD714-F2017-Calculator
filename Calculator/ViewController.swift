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
    var result = 0.0
    
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
        number1 = 0.0
        number2 = 0.0
        screenValue = 0.0
        screen.text = "0"
        operation = ""
        return screen.text!
    }
    
    
    // Outlets
    
    @IBOutlet weak var screen: UILabel!
    
 
    // Actions
    // Clear button
    
    @IBAction func clearButton(_ sender: UIButton) {
        screen.text = clear()
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
   
    
    // Operations
    
    @IBAction func operationButton(_ sender: UIButton) {
        if sender.tag == 1 {
            if operation != "+" {
                operation = "+"
                number1 = Double(screen.text!)!
                screenValue = 0.0
                print(number1)
            } else {
                if screenValue == 0.0 {
                    print("no new number to save")
                } else {
                    number1 = number1 + Double(screen.text!)!
                    screen.text = String(number1)
                    screenValue = 0.0
                }
            }
        }
        else if sender.tag == 2 {
            if operation != "-" {
                operation = "-"
                number1 = Double(screen.text!)!
                screenValue = 0.0
                print(number1)
            } else {
                if screenValue == 0.0 {
                    print("no new number to save")
                } else {
                    number1 = number1 - Double(screen.text!)!
                    screen.text = String(number1)
                    screenValue = 0.0
                }
            }
            
        }
        else if sender.tag == 3 {
            if operation != "*" {
                operation = "*"
                number1 = Double(screen.text!)!
                screenValue = 0.0
                print(number1)
            } else {
                if screenValue == 0.0 {
                    print("no new number to save")
                } else {
                    number1 = number1 * Double(screen.text!)!
                    screen.text = String(number1)
                    screenValue = 0.0
                }
            }
            
        }
        else if sender.tag == 4 {
            if operation != "/" {
                operation = "/"
                number1 = Double(screen.text!)!
                screenValue = 0.0
                print(number1)
            } else {
                if screenValue == 0.0 {
                   print("no new number to save")
                } else {
                    number1 = number1 / Double(screen.text!)!
                    screen.text = String(number1)
                    screenValue = 0.0
                }
            }
            
        }
        
        } // end op button
    
    
    
    
    
    
    @IBAction func equalsButton(_ sender: UIButton) {
        if operation == "+" {
            if number2 == 0.0 {
            number2 = Double(screen.text!)!
            screen.text = String(number1 + number2)
            number1 = Double(screen.text!)!
            print(number1, number2)
            } else {
                number1 = Double(screen.text!)!
                screen.text = String(number1 + number2)
            }
        } else if operation == "-" {
            if number2 == 0.0 {
                number2 = Double(screen.text!)!
                screen.text = String(number1 - number2)
                number1 = Double(screen.text!)!
                print(number1, number2)
            } else {
                number1 = Double(screen.text!)!
                screen.text = String(number1 - number2)
            }
            
        } else if operation == "*" {
            if number2 == 0.0 {
                number2 = Double(screen.text!)!
                screen.text = String(number1 * number2)
                number1 = Double(screen.text!)!
                print(number1, number2)
            } else {
                number1 = Double(screen.text!)!
                screen.text = String(number1 * number2)
            }
            
        } else if operation == "/" {
            if number2 == 0.0 {
                // number2 = Double(screen.text!)!
                screen.text = "Error"
                // number1 = Double(screen.text!)!
                print(number1, number2)
            } else {
                number1 = Double(screen.text!)!
                screen.text = String(number1 / number2)
            }
            
        }
    
    }
    
    
    

}


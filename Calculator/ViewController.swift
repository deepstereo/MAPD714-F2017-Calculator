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

   
    // Outlets
    
    @IBOutlet weak var screenLabel: UILabel!
    
    
    
    
    
    
    
    // Actions
    
    @IBAction func numberButton(_ sender: UIButton) {
        
        if Int(screenLabel.text!)! == 0 {
            screenLabel.text = sender.titleLabel?.text!
        } else {
            screenLabel.text = screenLabel.text! + (sender.titleLabel?.text)!
        }
    }
    
   @IBAction func decimalButton(_ sender: UIButton) {
//        if (Float(screenLabel.text!) != nil) {
//            screenLabel.text = screenLabel.text! + "."
//        } else {
//            screenLabel.text = screenLabel.text
//        }
   }
    
    @IBAction func clearButton(_ sender: UIButton) {
        screenLabel.text = String(0)
    }
    
    @IBAction func operationButton(_ sender: UIButton) {
    }
    
    
    
    


}


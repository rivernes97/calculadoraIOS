//
//  ViewController.swift
//  Calculadora
//
//  Created by Igor Lopes de Faria on 15/07/16.
//  Copyright © 2016 Igor Lopes de Faria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var digitAlreadyTyped: Bool = false
    
    @IBAction func pressDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        let currentDisplay = display.text!
        
        if digitAlreadyTyped{
            display.text = currentDisplay + digit
        }else{
            display.text = digit
        }
        digitAlreadyTyped  = true
    }
    
    @IBAction func selectOperation(sender: AnyObject) {
        
        let symbol = sender.currentTitle!
        
        if symbol == "÷"{
            print("Divisão")
        }else if symbol == "x"{
            print("Multiplicação")
        }else if symbol == "+"{
            print("Soma")
        }else if symbol == "-"{
            print("Subtração")
        }
        
    }
    
}


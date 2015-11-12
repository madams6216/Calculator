//
//  ViewController.swift
//  Calculator
//
//  Created by michael adams on 11/12/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var op: Int = 0
    var setZero: Bool = true
    var operand: Int = 0
    
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBAction func numericPressed(sender: AnyObject) {
        
        if  setZero {
            resultsLabel.text = "0"
            setZero = false
        }
        
        
        
        
        var results: Int = Int(resultsLabel.text!)!
        
        
        
        
        results = results * 10 + sender.tag
        resultsLabel.text = "\(results)"
    }
    
    
    @IBAction func clearPressed(sender: AnyObject) {
        
        resultsLabel.text = "0"
    }

    @IBAction func equalPressed(sender: AnyObject) {
        
        operand = calculatorResult(oprtr: op)
        
        resultsLabel.text = "\(operand)"
        op = 0
        setZero = true
        
        
        
    }
    
    
    @IBAction func operatorPressed(sender: AnyObject) {
        
        
        if op != 0 {
            
            operand = calculatorResult(oprtr: op)
            resultsLabel.text = "\(operand)"
            setZero = true
            op = sender.tag
            
            
        }else{
            
            let res: Int = Int(resultsLabel.text!)!
            operand = res
            setZero = true
            op = sender.tag
            

            
            
            
        
        }

        
        
        
    }
    
    
    
    func calculatorResult(oprtr oprtr: Int) -> Int{
    
    var returnValue: Int = Int(resultsLabel.text!)!
        
        switch (oprtr){
            
        case 1:
            returnValue = operand * returnValue
            break
       
        case 2:
            returnValue = operand / returnValue
            break

        
        case 3:
            returnValue = operand + returnValue
            break

            
        case 4:
            returnValue = operand - returnValue
            break

        default:
            break
        }
    
        
        return returnValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setZero = true
        op = 0
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


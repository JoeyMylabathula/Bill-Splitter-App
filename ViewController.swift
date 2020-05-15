//
//  ViewController.swift
//  Bill Splitter
//
//  Created by Joseph Mylabathula on 3/4/20.
//  Copyright © 2020 Joseph Mylabathula. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var DinerTextfield:
        UITextField!
    
    @IBOutlet weak var TotalConstTextField:
        UITextField!
    
    // Global Variable used for the Result text for Blue Calculation Screen
    var resultText = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DismissKeyboard(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    // Used for the Blue Calculator Screen
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
       // If the user inputs a Diner Text and Total Cost text, Execute
       if let dinerStr = DinerTextfield.text, let totalStr = TotalConstTextField.text,
            let diner = Double(dinerStr), let total = Double(totalStr)
        {
            let formatTotal = String(format: "%.2f", total/diner)
            let formatCost = String(format: "%.2f", total)
            
            resultText = "The total Cost of food is $\(formatCost)\n\nNumber of Diners: \(Int(diner))\n\nEach diner pays: $\(formatTotal)"
            return true
        }
        // If 2 values are not present do not calculate
        return false
    }
    
    // Function is used for what data to send over to the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
          // Downcast destination to the resultviewcontroller, this gives it access
          let destinationVC = segue.destination as! ResultViewController
          destinationVC.finalText = resultText
      
    }
}


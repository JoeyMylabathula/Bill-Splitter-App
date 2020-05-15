//
//  ResultViewController.swift
//  Bill Splitter
//
//  Created by Joseph Mylabathula on 4/2/20.
//  Copyright © 2020 Joseph Mylabathula. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    @IBOutlet weak var resultLabel: UILabel!
    var finalText = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        resultLabel.text = finalText
    }
    
    // Close Button
    @IBAction func Closer(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }

}

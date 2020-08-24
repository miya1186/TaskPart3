//
//  ViewController.swift
//  TaskPart3
//
//  Created by miyazawaryohei on 2020/08/24.
//  Copyright © 2020 miya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var switch1: UISwitch!
    @IBOutlet private var switch2: UISwitch!
    @IBOutlet private var textLabel1: UILabel!
    @IBOutlet private var textLabel2: UILabel!
    @IBOutlet private var resultsLabel: UILabel!
    
   private var num1 = 0
   private var num2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calcButton(_ sender: Any) {
        status()
        calc()
    }
    
    func status(){
        num1 = Int(textField1.text!) ?? 0
        num2 = Int(textField2.text!) ?? 0
        if switch1.isOn == true{
            num1 = -num1
        }
        if switch2.isOn == true{
            num2 = -num2
        }
    }
    
    func calc(){
        textLabel1.text = String(num1)
        textLabel2.text = String(num2)
        resultsLabel.text = String(num1 + num2)
    }
}

//
//  ViewController.swift
//  TebakAngka
//
//  Created by Hafidh Julian Kurniadi on 03/02/19.
//  Copyright © 2019 Hafidh Julian Kurniadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonClicked(_ sender: Any) {
        let randomNumber = String(arc4random_uniform(9) + 1)
        
        if (userInput.text?.isEmpty)! ||
            Int(userInput.text!)! < 1 ||
            Int(userInput.text!)! > 10{
            
            resultLabel.text = "Masukan Hanya angka 1-10"
            return
        }
        
        if (userInput.text == randomNumber) {
            resultLabel.text = "Tebakanmu Benar"
        }else{
            resultLabel.text = "Tebakanmu Salah! \nAngka yang benar adalah \(randomNumber)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}


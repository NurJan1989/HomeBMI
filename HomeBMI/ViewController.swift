//
//  ViewController.swift
//  HomeBMI
//
//  Created by Macbook Air on 12/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func computeActionButton(_ sender: UIButton) {
        if heightTextField.text != "" && weightTextField.text != "" {
            let height = Float(heightTextField.text!)
            let weigth = Float(weightTextField.text!)
            let result = (weigth ?? 0) / pow(height ?? 0, 2)
            resultTextField.text = result.description
        } else {
            let error = "ERROR"
            resultTextField.text = error
        }
    }
    
}









































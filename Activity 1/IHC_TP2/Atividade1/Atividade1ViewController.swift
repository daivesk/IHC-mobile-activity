//
//  ViewController.swift
//  IHC_TP2
//
//  Created by Rafael Ferreira on 18/02/22.
//

import UIKit

class Atividade1ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var textView: UITextView!



    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.delegate = self
        textField2.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func sumButtonPressed(_ sender: Any) {
        if let number1 = Int(textField1.text ?? ""),
           let number2 = Int(textField2.text ?? "") {
            textView.text = String(number1 + number2)
        } else {
            textView.text = "Invalid Input"
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


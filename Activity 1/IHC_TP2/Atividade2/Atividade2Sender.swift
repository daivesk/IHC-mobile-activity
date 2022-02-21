//
//  Atividade2Sender.swift
//  IHC_TP2
//
//  Created by Rafael Ferreira on 20/02/22.
//

import UIKit


class Atividade2SenderViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sendButton: UIButton!

    override func viewDidLoad() {
        textField.delegate = self
    }


    @IBAction func sendButtonPressed(_ sender: Any) {
        print("teste")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let receiver = segue.destination as? Atividade2ReceiverViewController else { return }
        receiver.receivedText = textField.text
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

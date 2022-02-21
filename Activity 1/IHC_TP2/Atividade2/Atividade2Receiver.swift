//
//  Atividade2Receiver.swift
//  IHC_TP2
//
//  Created by Rafael Ferreira on 20/02/22.
//

import UIKit



class Atividade2ReceiverViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!

    var receivedText: String!

    override func viewDidLoad() {
        textView.text = receivedText
    }
}

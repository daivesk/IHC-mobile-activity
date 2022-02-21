//
//  Atividade3ViewController.swift
//  IHC_TP2
//
//  Created by Rafael Ferreira on 20/02/22.
//

import UIKit
import CoreMotion

class Atividade3ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!

    var currentAccelerationX: Double?
    var currentAccelerationY: Double?
    var currentAccelerationZ: Double?

    var shouldTransition: Bool = true

    let motionManager = CMMotionManager()

    override func viewDidLoad() {
        motionManager.startAccelerometerUpdates(to: .main) { (data, error) in
            guard let data = data, error == nil else {
                print("unable to retrieve data")
                return
            }

            self.xLabel.text = String(format: "%.1f", data.acceleration.x)
            self.yLabel.text = String(format: "%.1f", data.acceleration.y)
            self.zLabel.text = String(format: "%.1f", data.acceleration.z)

            if abs(self.currentAccelerationX ?? data.acceleration.x) - abs(data.acceleration.x) > 0.5
                || abs(self.currentAccelerationY ?? data.acceleration.y) - abs(data.acceleration.y) > 0.5
                || abs(self.currentAccelerationZ ?? data.acceleration.z) - abs(data.acceleration.z) > 0.5
            {
                self.accelerometerTransition()
            }

            self.currentAccelerationX = data.acceleration.x
            self.currentAccelerationY = data.acceleration.y
            self.currentAccelerationZ = data.acceleration.z
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        shouldTransition = false
    }

    override func viewWillAppear(_ animated: Bool) {
        shouldTransition = true
    }

    func accelerometerTransition() {
        if shouldTransition {
            self.performSegue(withIdentifier: "Atividade3Segue", sender: nil)
        }
    }
}

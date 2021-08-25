//
//  ViewController.swift
//  kadai3Koichi
//
//  Created by KS on 2021/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var textFields: [UITextField]!
    @IBOutlet private var signSwitches: [UISwitch]!
    @IBOutlet private var beforeCalucLabels: [UILabel]!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textFields[0].keyboardType = .numberPad
        textFields[1].keyboardType = .numberPad
    }

    @IBAction private func showResultButton(_ sender: Any) {
        calculateResult()
        view.endEditing(true)
    }

    private func calculateResult() {
        let num1 = Double(textFields[0].text ?? "") ?? 0.0
        let num2 = Double(textFields[1].text ?? "") ?? 0.0

        let signedNum1: Double
        if signSwitches[0].isOn {
            signedNum1 = -num1
        } else {
            signedNum1 = num1
        }

        let signedNum2: Double
        if signSwitches[1].isOn {
            signedNum2 = -num2
        } else {
            signedNum2 = num2
        }

        beforeCalucLabels[0].text = String(signedNum1)
        beforeCalucLabels[1].text = String(signedNum2)

        let result = signedNum1 + signedNum2
        resultLabel.text = String(result)
    }
}

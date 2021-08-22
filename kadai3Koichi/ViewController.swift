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
        var num1 = Double(textFields[0].text ?? "") ?? 0.0
        var num2 = Double(textFields[1].text ?? "") ?? 0.0

        if signSwitches[0].isOn == true {
            num1 *= -1
        }

        if signSwitches[1].isOn == true {
            num2 *= -1
        }

        beforeCalucLabels[0].text = String(num1)
        beforeCalucLabels[1].text = String(num2)

        let result = num1 + num2
        resultLabel.text = String(result)
    }
}

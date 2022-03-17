//
//  SaveNameViewController.swift
//  KotaKadai16
//
//  Created by 前田航汰 on 2022/03/17.
//

import UIKit

protocol AdditionNameViewControllerDelegate: AnyObject {
    func addName(name: String)
}

class AdditionNameViewController: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    private let alertAppear = AlertAppear()
    weak var delegate: AdditionNameViewControllerDelegate?

    @IBAction private func didTapSaveButton(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty else {
            let alert = alertAppear.setAlert(message: "値を入力して下さい")
            present(alert, animated: true)
            return
        }
        delegate?.addName(name: name)
    }
}

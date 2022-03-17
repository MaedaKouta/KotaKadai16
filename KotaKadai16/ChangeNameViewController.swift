//
//  SaveChangeNameViewController.swift
//  KotaKadai16
//
//  Created by 前田航汰 on 2022/03/17.
//

import UIKit

protocol ChangeNameViewControllerDelegate: AnyObject {
    func changeName(name: String, index: Int)
}

class ChangeNameViewController: UIViewController {

    @IBOutlet private weak var nameTextField: UITextField!
    private let alertAppear = AlertAppear()
    private var choosingIndex = 0
    private var name = ""
    weak var delegate: ChangeNameViewControllerDelegate?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameTextField.text = name
    }

    @IBAction private func didTapSaveButton(_ sender: Any) {
        guard let name = nameTextField.text, !name.isEmpty else {
            let alert = alertAppear.setAlert(message: "値を入力して下さい")
            present(alert, animated: true)
            return
        }
        delegate?.changeName(name: name, index: choosingIndex)
    }

    func setData(name: String, index: Int) {
        self.name = name
        self.choosingIndex = index
    }
}

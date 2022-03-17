//
//  AlertAppear.swift
//  KotaKadai16
//
//  Created by 前田航汰 on 2022/03/17.
//

import Foundation
import UIKit

class AlertAppear {
    func setAlert(message: String) -> UIAlertController {
        let alert = UIAlertController(
            title: "注意",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil)
        )
        return alert
    }

}

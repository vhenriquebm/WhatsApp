//
//  Extensions.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

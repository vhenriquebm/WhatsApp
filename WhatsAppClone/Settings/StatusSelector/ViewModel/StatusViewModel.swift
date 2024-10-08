//
//  StatusViewModel.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 08/10/24.
//

import Foundation

class StatusViewModel: ObservableObject {
    @Published var status: UserStatus = .notConfigured
    
    func updateStatus(_ status: UserStatus) {
        self.status = status
    }
}

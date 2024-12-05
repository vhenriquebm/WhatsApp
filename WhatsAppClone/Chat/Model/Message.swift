//
//  Message.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 04/12/24.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}

//
//  ChatViewModel.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 04/12/24.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var messages = [Message]()
    
    init() {
        messages = mockMessages
    }
    
    var mockMessages: [Message] {
        
        return [
            Message(isFromCurrentUser: true, messageText: "Hey what´s up man"),
            Message(isFromCurrentUser: false, messageText: "Hey Bro"),
            Message(isFromCurrentUser: true, messageText: "Will you play today?"),
            Message(isFromCurrentUser: false, messageText: "yes!"),
            Message(isFromCurrentUser: false, messageText: "I hope i will play at 08:00 pm"),
            Message(isFromCurrentUser: true, messageText: "ok, we will win today"),
            Message(isFromCurrentUser: false, messageText: "yeah bro!")
        ]
    }
    
    func send(_ message: String) {
        let message = Message(isFromCurrentUser: true, messageText: message)
        messages.append(message)
    }
}

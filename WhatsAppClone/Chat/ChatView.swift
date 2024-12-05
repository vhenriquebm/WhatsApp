//
//  ChatView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = ChatViewModel()
    
    var body: some View {
        
        VStack {
            // messages
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                }
            }
            
            CustomInputView(text: $messageText,
                            action: sendMessage)
            
        
            
        }
        .navigationTitle("Iron man")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
        
    }
    
    private func sendMessage() {
        viewModel.send(messageText)
        messageText = ""
    }
}

#Preview {
    ChatView()
}

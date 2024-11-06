//
//  ChatView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    var body: some View {
        
        VStack {
            // messages
            
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((0...10), id: \.self) { _ in
                        MessageVIew(isFromCurrentUser: false)
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
        messageText = ""
    }
}

#Preview {
    ChatView()
}

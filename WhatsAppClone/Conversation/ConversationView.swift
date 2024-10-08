//
//  ConversationView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct ConversationView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            // Chats
            ScrollView {
                VStack {
                    
                }
            }
            
            //Floating button
            
            Button(action: {},
                   label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            
        }
    }
}

#Preview {
    ConversationView()
}

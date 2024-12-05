//
//  MessageVIew.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import SwiftUI

struct MessageView: View {
    var isFromCurrentUser: Bool
    var messageText: String
    
    var body: some View {
        HStack {
            
            if isFromCurrentUser {
                Spacer()
                
                Text(messageText)
                    .padding(12)
                    .background(Color.blue)
                    .font(.system(size: 15))
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundStyle(.white)
                    .padding(.leading, 100)
                    .padding(.horizontal)
                
            } else {
                
                HStack(alignment: .bottom) {
                    Image(.ironMan)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                    
                    Text(messageText)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .font(.system(size: 15))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundStyle(.black)
                    
                }.padding(.horizontal)
                    .padding(.trailing, 80)
                
                Spacer()
            }
        }
    }
}

#Preview {
    MessageView(isFromCurrentUser: true, messageText: "")
}

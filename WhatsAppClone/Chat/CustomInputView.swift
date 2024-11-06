//
//  CustomInputView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 06/11/24.
//

import SwiftUI

typealias VoidFunc = () -> Void

struct CustomInputView: View {
    @Binding var text: String
    
    var action: VoidFunc
    
    var body: some View {
        
        VStack {
            Rectangle()
                .foregroundColor(Color(.separator))
                .frame(width: UIScreen.main.bounds.width, height: 0.75)
            
            HStack {
                TextField("Message..", text: $text)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .frame(minHeight: 30)
                
                Button(action: action, label: {
                    Text("Send")
                        .bold()
                        .foregroundStyle(.black)
                    
                })
            }
            .padding(.bottom,8)
            .padding(.horizontal)
        }
    }
}

#Preview {
    CustomInputView(text: .constant("Message.."), action: {})
}

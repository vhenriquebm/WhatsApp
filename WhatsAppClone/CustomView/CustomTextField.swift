//
//  CustomTextField.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var image: String
    var isSecurity: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecurity {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            
            Divider()
                .background(Color(.darkGray))
        }
        .padding()
    }
}

#Preview {
    CustomTextField(text: .constant(""), placeholder: "", image: "envelope", isSecurity: true)
}

//
//  SearchBar.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 04/11/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            
            TextField("Search", text: $text)
                .padding(8)
                .padding(.horizontal, 28)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .frame(width: 24, height: 24)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                }
            
            if isEditing {
                Button(action: {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("Cancel")
                        .foregroundStyle(.black)
                })
                .padding(.trailing, 8)
                .transition(.move(edge: .trailing))
                .animation(.default)                
            }
            
        }
    }
}

#Preview {
    SearchBar(text: .constant("Search..."), isEditing: .constant(false))
}

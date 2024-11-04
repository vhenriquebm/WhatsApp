//
//  NewMessageView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 13/10/24.
//

import SwiftUI

struct NewMessageView: View {
    @Binding var showChatView: Bool
    @Environment(\.presentationMode) var mode
    @State private var searchText = ""
    @State private var isEditing = false
    
    var body: some View {
        
        SearchBar(text: $searchText, isEditing: $isEditing)
            .onTapGesture { isEditing.toggle() }
            .padding()
        
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(0...10, id: \.self) { _ in
                    Button(action: {
                        showChatView.toggle()
                        mode.wrappedValue.dismiss()
                    }, label: {UserCell()})
                    
                    
                }
            }
        }
    }
}

#Preview {
    NewMessageView(showChatView: .constant(true))
}

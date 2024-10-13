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
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach((0 ... 10), id: \.self) { _ in
                        ConversationCell()
                    }
                }
            }
            
            Button(action: {},
                   label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
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

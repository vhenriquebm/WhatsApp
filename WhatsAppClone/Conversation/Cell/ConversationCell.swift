//
//  UserCell.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 13/10/24.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(.ironMan)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Eddir Brock")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("This is some text message for now..")
                        .font(.system(size: 15))
                }
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
        }.padding(.top)
    }
}

#Preview {
    ConversationCell()
}

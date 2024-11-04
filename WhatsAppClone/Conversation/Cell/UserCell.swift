//
//  UserCell.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 03/11/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {
                Image(.ironMan)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Eddie Brock")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("@eddie")
                        .font(.system(size: 15))
                }
                .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.horizontal)
        }.padding(.top)
    }
}

#Preview {
    UserCell()
}

//
//  SettingsHeaderView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct SettingsHeaderView: View {
    var body: some View {
        
        HStack {
            Image(.ironMan)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack (alignment: .leading, spacing: 4){
                Text("Iron man")
                    .font(.system(size: 18))
                    .foregroundStyle(.black)
                
                Text("Available")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}

#Preview {
    SettingsHeaderView()
}

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
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.leading)
            
            VStack (alignment: .leading, spacing: 4){
                Text("Eddie Brock")
                    .font(.system(size: 18))
                
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

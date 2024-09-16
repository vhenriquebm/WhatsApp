//
//  SettingsCell.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct SettingsCell: View {
    let viewModel: SettingsCellViewModel
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22, alignment: .center)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundColor(Color.white)
                    .cornerRadius(6)
                
                Text(viewModel.title)
                    .font(.system(size: 15))
                
                Spacer()
                
                Image(systemName: "chevron.right").foregroundColor(.gray)
            }
            .padding([.top, .horizontal])
            
            Divider()
        }
        .background(Color.white)
    }
}



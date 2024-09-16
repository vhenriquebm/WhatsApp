//
//  SettingsView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                SettingsHeaderView()
                
                VStack(spacing: 1) {
                    ForEach(SettingsCellViewModel.allCases, id: \.self) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    }
                }
                
                Button(action: {}, label: {
                    Text("Log out")
                        .foregroundStyle(.red)
                        .font(.system(size: 16, weight: .semibold))
                })
                .frame(width: UIScreen.main.bounds.width, height: 50)
                .background(Color.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsView()
}

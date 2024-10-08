//
//  StatusSelectorView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 06/10/24.
//

import SwiftUI

struct StatusSelectorView: View {
    @ObservedObject var viewModel = StatusViewModel()
    
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    StatusCell(status: viewModel.status)
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    ForEach((UserStatus.allCases.filter { $0 != .notConfigured }), id: \.self) { status in
                        Button(action: {
                            viewModel.updateStatus(status)
                        },
                               label: {StatusCell(status: status)}).foregroundColor(Color.black)
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCell: View {
    let status: UserStatus
    
    var body: some View {
        HStack {
            Text(status.title)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}

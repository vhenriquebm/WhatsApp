//
//  StatusSelectorView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 06/10/24.
//

import SwiftUI

struct StatusSelectorView: View {
    
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    StatusCell(viewModel: StatusViewModel(rawValue: 4)!)
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    ForEach((StatusViewModel.allCases.filter { $0 != .notConfigured }), id: \.self) { viewModel in
                        Button(action: {},
                               label: {StatusCell(viewModel: viewModel)}).foregroundColor(Color.black)
                        
                        
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
    let viewModel: StatusViewModel
    
    var body: some View {
        HStack {
            Text(viewModel.title)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}

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
      
                    HStack {
                        Text("Available")
                        Spacer()
                    }
                    .padding(.horizontal)
                    .frame(height: 56)
                    .background(Color.white)

                    Text("SELECT YOUR STATUS")
                        .foregroundStyle(.gray)
                        .padding()
                    
                    ForEach((0...10), id: \.self) { _ in
                        HStack {
                            Text("Available")
                            Spacer()
                        }
                        .padding(.horizontal)
                        .frame(height: 56)
                        .background(Color.white)
                    }
                }
            }
        }
    }
}

#Preview {
    StatusSelectorView()
}

//
//  EditProfileView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 18/09/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullName: String = "Iron Man"
    
    var body: some View {
        
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 32) {
                VStack {
                    HStack {
                        VStack {
                            Image(.ironMan)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Edit")
                            })
                        }
                        .padding()
                        
                        Text("Enter your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    
                    TextField("", text: $fullName)
                        .padding(8)
                }
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                
                NavigationLink(destination: Text("Edit Status")) {
                    VStack(alignment: .leading) {
                        
                        Text("Status")
                            .padding()
                            .foregroundColor(.gray)
                        
                        HStack {
                            Text("At the movies")
                            
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundStyle(.gray)
                        }
                        .padding()
                        .background(Color.white)
                    }
                }
                
                Spacer()
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        
    }
}

#Preview {
    EditProfileView()
}

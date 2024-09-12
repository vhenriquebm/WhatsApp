//
//  LoginView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 12/09/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Hello,")
                    .font(.largeTitle)
                    .bold()
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.blue)
            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            .padding()
            
            VStack {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
            }
            .padding([.top, .horizontal], 32)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}

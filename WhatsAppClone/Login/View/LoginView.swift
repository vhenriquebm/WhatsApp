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
            
            VStack(alignment: .leading, spacing: 12) {
                
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
                
                CustomTextField(text: $email,
                                placeholder: Generic.Placeholder.email, image: "envelope",
                                isSecurity: false)
                
                CustomTextField(text: $password,
                                placeholder: Generic.Placeholder.password, image: "lock",
                                isSecurity: true)
                
            }
            .padding([.top, .horizontal], 32)
            
            HStack {
                Spacer()
                
                NavigationLink(destination: Text("Reset password..")) {
                    Text("Forgot Password")
                        .font(.system(size: 13, weight: .semibold))
                        .padding(.top)
                        .padding(.trailing, 28)
                }
            }
            
            Button {
                
            } label: {
                Text("Sign in")
                    .foregroundStyle(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
                    .shadow(color: .gray, radius: 10, x: 0.0, y: 0.0)
            }
            
            Spacer()
            
            NavigationLink(destination: RegisterView()) {
                HStack {
                    Text("Don´t have an account?").font(.system(size: 14))
                    
                    Text("Sign up").font(.system(size: 14, weight: .semibold))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

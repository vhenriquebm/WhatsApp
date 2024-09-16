//
//  MainTabView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                ChatView()
                    .tabItem { Image(systemName: "bubble.left") }
                
                ChannelsView()
                    .tabItem { Image(systemName: "bubble.left.and.bubble.right") }

                
                SettingsView()
                    .tabItem { Image(systemName: "gear") }


            }
        }
        
    }
}

#Preview {
    MainTabView()
}

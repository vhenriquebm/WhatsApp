//
//  MainTabView.swift
//  WhatsAppClone
//
//  Created by Vitor Henrique Barreiro Marinho on 16/09/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var title: String {
        switch selectedIndex {
        case 0:
            return "Chats"
        case 1:
            return "Channels"
        case 2:
            return "Settings"
        default:
            return ""
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            TabView(selection: $selectedIndex) {
                
                ChatView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem { Image(systemName: "bubble.left") }
                    .tag(0)
                
                ChannelsView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem { Image(systemName: "bubble.left.and.bubble.right")}                    .tag(1)
                
                
                
                SettingsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }.tabItem { Image(systemName: "gear")}
                    .tag(2)
            }
            .navigationTitle(title)
        }
    }
}

#Preview {
    MainTabView()
}


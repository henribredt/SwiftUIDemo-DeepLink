//
//  ContentView.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.activeTab) {
            FligthsView()
                .tabItem {
                    Label("Flights", systemImage: "airplane")
                }
                .tag(Tab.flights)
            
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell")
                }
                .tag(Tab.notifications)
            
            ProfilView()
                .tabItem {
                    Label("Profil", systemImage: "person")
                }
                .tag(Tab.profil)
            
            
        }
        .environmentObject(appState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

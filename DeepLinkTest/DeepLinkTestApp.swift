//
//  DeepLinkTestApp.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import SwiftUI

@main
struct DeepLinkTestApp: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .onOpenURL { url in
                    if appState.checkDeepLinkURL(url: url) {
                        print("Succesfully opened DeepLink \(url)")
                    } else {
                        print("Failed to open DeepLink \(url)")
                    }
                }
        }
    }
}

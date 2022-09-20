//
//  AppState.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var activeTab: Tab = .flights
    @Published var activeDetailFlight: String?
    
    func checkDeepLinkURL(url: URL)->Bool{
        guard let host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else {
            return false
        }
        
        if host == Tab.profil.rawValue{
            activeTab = .profil
            return true
        } else {
            return checkInternalLinks(host: host)
        }
        
        return false
    }
    
    func checkInternalLinks(host: String) -> Bool {
        // check if requested id is in data
        if let index = Flight.mockData.firstIndex(where: { flight in
            return flight.id == host
        }) {
            // change to correct tab
            activeTab = .flights
            // set active detail view so that it will be opend
            activeDetailFlight = Flight.mockData[index].id
            
            return true
        }
        
        return false
    }
}

enum Tab: String {
    case flights = "Home"
    case notifications = "Notifications"
    case profil = "Profil"
}

//
//  Flight.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import Foundation

struct Flight: Identifiable {
    let id: String
    let destinationAirport: String
    let arrivalAirport: String
    let depature: Date
    let arrival: Date
}

extension Flight {
    static let mockData: [Flight] = [
        Flight(id: "du20gD", destinationAirport: "BER", arrivalAirport: "MUC", depature: Date(), arrival: Date().addingTimeInterval(12345)),
        Flight(id: "fgH7ff", destinationAirport: "JFK", arrivalAirport: "TFS", depature: Date(), arrival: Date().addingTimeInterval(24345)),
    ]
}

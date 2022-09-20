//
//  FlightDetailView.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import SwiftUI

struct FlightDetailView: View {
    let flight: Flight
    
    var body: some View {
        NavigationStack{
            HStack{
                HStack{
                    VStack{
                        Text(flight.destinationAirport)
                            .bold()
                        Text(flight.depature.formatted())
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    
                    
                    Image(systemName: "airplane")
                        .frame(width: 20, height: 20)
                        .padding(16)
                    
                    VStack{
                        Text(flight.arrivalAirport)
                            .bold()
                        Text(flight.arrival.formatted())
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                }
                .navigationTitle("\(flight.destinationAirport) to \(flight.arrivalAirport)")
                .navigationBarTitleDisplayMode(.inline)
                
            }
            .padding()
        }
    }
}

struct FlightDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailView(flight: Flight.mockData.first!)
    }
}

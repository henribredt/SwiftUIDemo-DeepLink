//
//  HomeView.swift
//  DeepLinkTest
//
//  Created by Henri Bredt on 20.09.22.
//

import SwiftUI

struct FligthsView: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationStack {
            VStack{
                List{
                    ForEach(Flight.mockData) { flight in
                        NavigationLink(tag: flight.id, selection: $appState.activeDetailFlight) {
                            FlightDetailView(flight: flight)
                        } label: {
                            VStack(alignment: .leading, spacing: 8){
                                HStack{
                                    Text(flight.destinationAirport)
                                    Image(systemName: "airplane")
                                        .imageScale(.small)
                                    Text(flight.arrivalAirport)
                                }
                                .font(.title2)
                                Text(flight.depature.formatted())
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                    }
                }
                
                Button("Copy Profil DeepLink") {
                    let pasteboard = UIPasteboard.general
                    pasteboard.string = "myapp://Profil"
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
                
                Button("Copy DetailView DeepLink") {
                    let pasteboard = UIPasteboard.general
                    pasteboard.string = "myapp://fgH7ff"
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
            }
            .navigationTitle("My flights")
        }
    }
}

struct FligthsView_Previews: PreviewProvider {
    static var previews: some View {
        FligthsView()
    }
}

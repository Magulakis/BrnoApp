//
//  RecommendedTripsView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI

struct RecommendedTripsView: View {
    
    let trips = RecommendedTripData.trips

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ForEach(trips) { trip in
                    TripCardView(trip: trip)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
            Spacer()
                .frame(height: 100) 
        }
        .navigationTitle("Recommended Trips")
        .scrollIndicators(.hidden)
    }
}

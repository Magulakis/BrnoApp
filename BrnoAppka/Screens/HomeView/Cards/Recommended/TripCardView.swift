//
//  TripCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct TripCardView: View {
    let trip: RecommendedTrip

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(trip.title)
                .font(.headline)

            Image(trip.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 160)
                .clipped()
                .cornerRadius(10)

            Text(trip.description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            VStack(alignment: .leading) {
                Text("What to see:")
                    .font(.subheadline)
                    .bold()
                ForEach(trip.highlights, id: \.self) { item in
                    Text("• \(item)")
                        .font(.caption)
                }
            }

            Text("💰 Estimated cost: \(trip.estimatedCostCZK) CZK")
                .font(.caption)
                .foregroundColor(Color.warmRose)
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.2))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}


//
//  NatureSpotCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct NatureSpotCardView: View {
    
    let spot: NatureSpot

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(spot.title)
                .font(.headline)

            Image(spot.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 160)
                .clipped()
                .cornerRadius(10)

            Text(spot.description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            VStack(alignment: .leading) {
                Text("Highlights:")
                    .font(.subheadline)
                    .bold()
                ForEach(spot.highlights, id: \.self) { item in
                    Text("• \(item)")
                        .font(.caption)
                }
            }
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.2))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}

//
//  DestinationCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI

struct DestinationCardView: View {
    
    let place: Place
    let toggleFavorite: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(place.name)
                        .font(.headline)

                    Text(place.location)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }

                Spacer()

                Button(action: toggleFavorite) {
                    Image(systemName: place.isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .padding(10)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 2)
                        .foregroundColor(place.isFavorite ? .warmRose : .gray)
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.1))
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.05), radius: 3, x: 0, y: 2)
    }
}

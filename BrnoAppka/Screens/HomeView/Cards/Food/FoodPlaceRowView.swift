//
//  FoodPlaceRowView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import SwiftUI
import MapKit

struct FoodPlaceRowView: View {
    
    let place: FoodPlace
    let onLocationTap: (FoodPlace) -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(place.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 140)
                .clipped()
                .cornerRadius(12)

            Text(place.name)
                .font(.headline)

            Text(place.description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            HStack(spacing: 16) {
                if let url = place.websiteURL {
                    Link(destination: url) {
                        Image(systemName: "globe")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(14)
                            .background(Color.brandDarkGreen)
                            .clipShape(Circle())
                    }
                }

                if let phone = place.contact {
                    Button {
                        if let callURL = URL(string: "tel://\(phone.replacingOccurrences(of: " ", with: ""))") {
                            UIApplication.shared.open(callURL)
                        }
                    } label: {
                        Image(systemName: "phone.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .padding(14)
                            .background(Color.brandSage)
                            .clipShape(Circle())
                    }
                }

                Button {
                    onLocationTap(place)
                } label: {
                    Image(systemName: "map.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(14)
                        .background(Color.brandWarmRose)
                        .clipShape(Circle())
                }
            }
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.15))
        .cornerRadius(15)
        .shadow(radius: 2)
    }
}

//
//  BrnoSportCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct BrnoSportCardView: View {
    
    let team: BrnoSportTeam

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(team.name)
                .font(.headline)

            Image(team.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100) 
                .frame(maxWidth: .infinity)
                .background(Color.brandSoftSand)
                .cornerRadius(10)
                .clipped()

            Text("Sport: \(team.sport)")
                .font(.subheadline)
                .foregroundColor(.secondary)

            Text(team.description)
                .font(.subheadline)

            Text("📍 Address: \(team.stadiumAddress)")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.2))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}

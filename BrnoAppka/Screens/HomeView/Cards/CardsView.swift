//
//  CardsView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI

struct CardsView: View {
    
    var title: String
    var subtitle: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.brandSoftSand.opacity(0.4))
            .frame(width: 250, height: 120)
            .overlay(
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                    Text(subtitle)
                        .font(.subheadline)
                    Spacer()
                    Text("Tap for more")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .padding(5)
                        .background(Color.brandWarmRose)
                        .cornerRadius(5)
                }
                    .padding()
                    .padding(.trailing, 55)
            )
    }
}

#Preview {
    CardsView(title: "Competitive Sports", subtitle: "Clubs & major events")
}

//
//  PromotionCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import SwiftUI

struct PromotionCardView: View {
    
    let card: PromotionCard

    var body: some View {
        NavigationLink(destination: card.destination) {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.brandSoftSand.opacity(0.4))
                .frame(width: 180, height: 100)
                .overlay(
                    VStack(alignment: .leading, spacing: 6) {
                        Text(card.title)
                            .font(.subheadline.bold())
                            .foregroundColor(.primary)
                        Text(card.subtitle)
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Tap for more")
                            .font(.caption2)
                            .foregroundStyle(Color.white)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 3)
                            .background(Color.brandWarmRose)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8),
                    alignment: .bottomLeading
                )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

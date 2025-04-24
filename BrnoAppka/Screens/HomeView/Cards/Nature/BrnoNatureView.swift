//
//  BrnoNatureView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI

struct BrnoNatureView: View {
    let spots = NatureSpotData.spots

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ForEach(spots) { spot in
                    NatureSpotCardView(spot: spot)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
            Spacer()
                .frame(height: 100) 
        }
        .navigationTitle("Nature in Brno")
        .scrollIndicators(.hidden)
    }
}

#Preview {
    BrnoNatureView()
}

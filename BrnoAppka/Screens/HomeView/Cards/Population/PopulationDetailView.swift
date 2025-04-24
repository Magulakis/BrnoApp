//
//  PopulationDetailView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 17/04/2025.
//

import SwiftUI

struct PopulationDetailView: View {
    var body: some View {
        ScrollView {
            BrnoPopulationChart(populationData: populationData)
                .padding()

            Text("Brno’s population has grown steadily since 2001, with over 382,000 residents today.")
                .padding()
        }
        .navigationTitle("Population Details")
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}


#Preview {
    PopulationDetailView()
}

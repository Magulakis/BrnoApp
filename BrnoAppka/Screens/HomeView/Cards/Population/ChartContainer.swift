//
//  ChartContainer.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 21/04/2025.
//

import SwiftUI

enum PopulationChartContext {
    case population
}

struct ChartContainerConfiguration {
    let title: String
    let symbol: String
    let subtitle: String
    let context: PopulationChartContext
    let isNav: Bool
}

struct ChartContainer<Content: View>: View {
    let config: ChartContainerConfiguration
    let content: () -> Content

    init(config: ChartContainerConfiguration, @ViewBuilder content: @escaping () -> Content) {
        self.config = config
        self.content = content
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 10) {
                Image(systemName: config.symbol)
                    .foregroundStyle(Color.brandDarkGreen)
                VStack(alignment: .leading) {
                    Text(config.title)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(config.subtitle)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }

            content()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(radius: 4)
        )
    }
}

//
//  ChartEmptyView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import SwiftUI

struct ChartEmptyView: View {
    let systemImageName: String
    let title: String
    let description: String

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.secondary)

            Text(title)
                .font(.headline)
                .foregroundColor(.primary)

            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

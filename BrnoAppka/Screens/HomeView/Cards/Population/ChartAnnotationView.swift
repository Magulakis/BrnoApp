//
//  ChartAnnotationView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 21/04/2025.
//

import SwiftUI

enum PopulationContext {
    case total
    case men
    case women
}

struct ChartAnnotationView: View {
    let data: DateValueChartData
    let context: PopulationContext

    var body: some View {
        VStack(spacing: 4) {
            Text(formattedValue(for: data.value))
                .font(.headline)
                .bold()
                .foregroundColor(.primary)

            Text(formattedDate(for: data.date))
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(8)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemBackground)))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
        .shadow(radius: 3)
        .transition(.opacity)
    }

    private func formattedValue(for value: Int) -> String {
        switch context {
        case .total:
            return "\(value) residents"
        case .men:
            return "\(value) men"
        case .women:
            return "\(value) women"
        }
    }

    private func formattedDate(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        return formatter.string(from: date)
    }
}

#Preview {
    ChartAnnotationView(data: DateValueChartData(date: Date(), value: 382000),
                        context: .total)
}

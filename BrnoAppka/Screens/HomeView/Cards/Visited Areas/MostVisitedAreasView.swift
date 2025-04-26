//
//  MostVisitedAreasView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI

struct VisitedArea: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}

struct MostVisitedAreasView: View {
    let areas: [VisitedArea] = [
        VisitedArea(
            name: "Areál Vlněna",
            imageName: "vlnena",
            description: "Vlněna sees its peak on Tuesdays before noon, with lower traffic on Fridays and weekends."
        ),
        VisitedArea(
            name: "Areál Mendelovy univerzity",
            imageName: "mendelu",
            description: "Visitor count doubles during academic terms compared to holidays or exam periods."
        ),
        VisitedArea(
            name: "Ohňostroje Ignis Brunensis",
            imageName: "ignis",
            description: "The fireworks festival peaks at 22:30, attracting massive crowds to the lakefront."
        ),
        VisitedArea(
            name: "Brněnský Majáles",
            imageName: "majales",
            description: "Attendance builds rapidly until headline acts perform from 18:00 to 22:00."
        )
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(areas) { area in
                    VStack(alignment: .leading, spacing: 8) {
                        Image(area.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 180)
                            .clipped()
                            .cornerRadius(12)

                        Text(area.name)
                            .font(.headline)

                        Text(area.description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .background(Color.brandSoftSand.opacity(0.15))
                    .cornerRadius(15)
                    .shadow(radius: 2)
                }
            }
            .padding()
            Spacer()
                .frame(height: 100)
        }
        .navigationTitle("Most Visited Areas")
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    MostVisitedAreasView()
}


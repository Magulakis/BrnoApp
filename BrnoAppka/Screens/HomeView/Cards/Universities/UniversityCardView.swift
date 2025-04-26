//
//  UniversityCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import SwiftUI

struct UniversityCardView: View {
    
    let university: University

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.brandSoftSand)
                    .frame(width: 60, height: 60)
                Image(university.logoName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            .padding()

            VStack(alignment: .leading, spacing: 4) {
                Text(university.name)
                    .font(.headline)
                    .lineLimit(1)
                    .minimumScaleFactor(0.65)

                Text(university.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .minimumScaleFactor(0.65)
                
                    
            }

            Spacer()
        }
        .background(Color.brandSoftSand.opacity(0.15))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}


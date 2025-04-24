//
//  BrnoUniversitiesView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI

struct BrnoUniversitiesView: View {
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    LazyVStack(spacing: 16) {
                        ForEach(UniversityData.universities) { university in
                            NavigationLink(destination: UniversityDetailView(university: university)) {
                                HStack(spacing: 16) {
                                    Image(university.logoName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60)
                                        .padding()
                                        .background(Color.brandSoftSand)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))

                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(university.name)
                                            .font(.headline)
                                            .foregroundColor(.primary)

                                        Text(university.description)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                            .lineLimit(3)
                                    }

                                    Spacer()
                                }
                                .padding()
                                .background(Color.brandSoftSand.opacity(0.2))
                                .cornerRadius(15)
                                .shadow(radius: 1)
                            }
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                        .frame(height: 100) 
                }
                .padding(.top)
            }
            .navigationTitle("Universities in Brno")
            .scrollIndicators(.hidden)
    }
}

#Preview {
    BrnoUniversitiesView()
}

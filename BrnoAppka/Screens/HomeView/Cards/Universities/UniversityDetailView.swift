//
//  UniversityDetailView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import SwiftUI

struct UniversityDetailView: View {
    
    let university: University

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                // Logo
                HStack {
                    Spacer()
                    Image(university.logoName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                        .background(Color.brandSoftSand)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                }

                // Description
                Text(university.description)
                    .font(.body)
                    .padding(.horizontal)

                // Faculties
                VStack(alignment: .leading, spacing: 10) {
                    Text("Faculties")
                        .font(.headline)
                    ForEach(university.faculties, id: \.self) { faculty in
                        Text("• \(faculty)")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)

                // Career Paths
                VStack(alignment: .leading, spacing: 10) {
                    Text("Career Paths")
                        .font(.headline)
                    ForEach(university.careerPaths, id: \.self) { career in
                        Text("• \(career)")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)

                // Faculty Chart
                UniversityFacultyChart(stats: university.facultyStats)
                    .padding(.horizontal)
            }
            .padding(.vertical)
            Spacer()
                .frame(height: 100) 
        }
        .navigationTitle(university.name)
        .navigationBarTitleDisplayMode(.inline)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    UniversityDetailView(university: UniversityData.universities[0])
}

//
//  CompetitiveSportsView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI

struct CompetitiveSportsView: View {
    let teams = BrnoSportTeamData.teams

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ForEach(teams) { team in
                    BrnoSportCardView(team: team)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
            Spacer()
                .frame(height: 100) 
        }
        .navigationTitle("Competitive Sports in Brno")
        .scrollIndicators(.hidden)
    }
}

#Preview {
    CompetitiveSportsView()
}

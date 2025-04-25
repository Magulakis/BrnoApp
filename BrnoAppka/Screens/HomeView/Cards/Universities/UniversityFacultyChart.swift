//
//  UniversityFacultyChart.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI
import Charts

struct UniversityFacultyChart: View {
    
    let stats: [FacultyStudentStat]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Student Distribution by Faculty")
                .font(.title2)
                .bold()

            Chart {
                ForEach(stats) { stat in
                    BarMark(
                        x: .value("Students", stat.total),
                        y: .value("Faculty", stat.faculty)
                    )
                    .foregroundStyle(Color.brandDarkGreen.gradient)
                    .annotation(position: .trailing) {
                        Text("\(stat.total)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .frame(height: CGFloat(stats.count * 40))
            .chartXAxis { AxisMarks() }
            .chartYAxis { AxisMarks(position: .leading) }
        }
        .padding(.horizontal)
    }
}

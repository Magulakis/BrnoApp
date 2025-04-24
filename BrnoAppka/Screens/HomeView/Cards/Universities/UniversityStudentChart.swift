//
//  UniversityStudentChart.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI
import Charts

struct UniversityStudentChart: View {
    let stats: [StudentYearStat]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Student Count Over Time")
                .font(.title2)
                .bold()

            Chart {
                ForEach(stats) { entry in
                    BarMark(
                        x: .value("Year", entry.year),
                        y: .value("Students", entry.count)
                    )
                    .foregroundStyle(Color.brandDarkGreen.gradient)
                    .cornerRadius(5)
                }
            }
            .frame(height: 220)
            .chartXAxis {
                AxisMarks(values: .stride(by: 1)) {
                    AxisValueLabel()
                }
            }
            .chartYAxis {
                AxisMarks()
            }
        }
        .padding(.horizontal)
    }
}

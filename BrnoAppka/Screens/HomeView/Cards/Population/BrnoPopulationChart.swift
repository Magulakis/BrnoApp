//
//  PopulationChartView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 21/04/2025.
//

import SwiftUI
import Charts

enum PopulationChartType: String, CaseIterable {
    case total = "Total"
    case men = "Men"
    case women = "Women"
}

struct BrnoPopulationChart: View {
    @State private var rawSelectedDate: Date?
    @State private var selectedDay: Date?
    @State private var selectedType: PopulationChartType = .total

    let populationData: [PopulationYear]

    var filteredData: [DateValueChartData] {
        let latestFive = populationData.suffix(5)
        switch selectedType {
        case .total:
            return latestFive.map { .init(date: $0.date, value: $0.total) }
        case .men:
            return latestFive.map { .init(date: $0.date, value: $0.men) }
        case .women:
            return latestFive.map { .init(date: $0.date, value: $0.women) }
        }
    }


    var selectedData: DateValueChartData? {
        ChartHelper.parseSelectedData(from: filteredData, in: rawSelectedDate)
    }

    var averagePopulation: Int {
        Int(filteredData.map { $0.value }.average)
    }

    var selectedContext: PopulationContext {
        switch selectedType {
        case .total: return .total
        case .men: return .men
        case .women: return .women
        }
    }

    var body: some View {
        let config = ChartContainerConfiguration(
            title: "Population",
            symbol: "person.3",
            subtitle: "Avg: \(averagePopulation.formatted()) residents",
            context: .population,
            isNav: false
        )

        ChartContainer(config: config) {
            Picker("Population Type", selection: $selectedType) {
                ForEach(PopulationChartType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding(.bottom)

            Chart {
                RuleMark(y: .value("Average", averagePopulation))
                    .foregroundStyle(Color.secondary)
                    .lineStyle(.init(lineWidth: 1, dash: [5]))

                ForEach(filteredData) { point in
                    BarMark(
                        x: .value("Year", point.date, unit: .year),
                        y: .value("Population", point.value)
                    )
                    .position(by: .value("Group", "Population")) // Adds spacing
                    .foregroundStyle(Color.brandDarkGreen.gradient)
                    .opacity(rawSelectedDate == nil || point.date == selectedData?.date ? 1.0 : 0.3)
                    .cornerRadius(4)
                    .annotation(position: .top, alignment: .center) {
                        if selectedData?.date == point.date {
                            ChartAnnotationView(data: point, context: selectedContext)
                        }
                    }
                }
            }
            .frame(height: 200)
            .chartXSelection(value: $rawSelectedDate.animation(.easeInOut))
            .chartXAxis {
                AxisMarks(values: .stride(by: 4)) {
                    AxisValueLabel(format: .dateTime.year())
                }
            }
            .chartYAxis {
                AxisMarks { value in
                    AxisGridLine()
                        .foregroundStyle(Color.secondary.opacity(0.3))
                    AxisValueLabel()
                }
            }
            .overlay {
                if filteredData.isEmpty {
                    ChartEmptyView(
                        systemImageName: "chart.bar",
                        title: "No Data",
                        description: "No population records available."
                    )
                }
            }
        }
        .sensoryFeedback(.selection, trigger: selectedDay)
        .onChange(of: rawSelectedDate) { selectedDay = rawSelectedDate }
    }
}

#Preview {
    BrnoPopulationChart(populationData: populationData)
}


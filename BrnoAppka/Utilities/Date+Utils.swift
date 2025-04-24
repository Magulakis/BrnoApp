//
//  Date+Utils.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation

extension Date {
    static func from(year: Int) -> Date {
        let calendar = Calendar.current
        let components = DateComponents(year: year, month: 1, day: 1)
        return calendar.date(from: components) ?? Date()
    }
}

//
//  PopulationData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 21/04/2025.
//

import Foundation

struct PopulationYear: Identifiable {
    let id = UUID()
    let date: Date
    let total: Int
    let men: Int
    let women: Int
}

//
//  RecommendedTrip.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct RecommendedTrip: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String  
    let description: String
    let highlights: [String]
    let estimatedCostCZK: Int
}

//
//  NatureSpot.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import Foundation

struct NatureSpot: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let description: String
    let highlights: [String]
}

//
//  BrnoSportTeam.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import Foundation

struct BrnoSportTeam: Identifiable {
    let id = UUID()
    let name: String
    let sport: String
    let imageName: String
    let description: String
    let stadiumAddress: String
}

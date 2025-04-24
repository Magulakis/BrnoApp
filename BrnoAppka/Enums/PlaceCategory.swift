//
//  PlaceCategory.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import Foundation

enum PlaceCategory: String, CaseIterable, Codable {
    case all = "All"
    case food = "Food"
    case trips = "Trips"
    case nature = "Nature"
    case sports = "Sports"
    case universities = "Universities"
    case mostVisited = "Most Visited"
}

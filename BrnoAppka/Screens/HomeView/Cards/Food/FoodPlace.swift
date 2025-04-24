//
//  FoodPlace.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation

struct FoodPlace: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let category: String
    let imageName: String
    let websiteURL: URL?
    let contact: String?
    let locationURL: URL?  // optional, but can stay
    let latitude: Double?
    let longitude: Double?
}

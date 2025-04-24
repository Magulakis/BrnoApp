//
//  RecommendedTripData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct RecommendedTripData {
    static let trips: [RecommendedTrip] = [
        RecommendedTrip(
            title: "Brno Underground",
            imageName: "brnoUnderground",
            description: "Explore mysterious catacombs, ossuaries, and tunnels below Brno.",
            highlights: ["Zelný trh labyrinth", "Capuchin Crypt", "Ossuary at St. James"],
            estimatedCostCZK: 300),
        RecommendedTrip(
            title: "Špilberk Castle",
            imageName: "spilberkCastle",
            description: "A historical fortress offering city views and cultural exhibitions.",
            highlights: ["Castle museum", "Prison casemates", "Panoramic views"],
            estimatedCostCZK: 250),
        RecommendedTrip(
            title: "Villa Tugendhat",
            imageName: "villaTugendhat",
            description: "UNESCO-listed modernist villa designed by Mies van der Rohe.",
            highlights: ["Interior architecture", "Garden tour", "Guided exhibition"],
            estimatedCostCZK: 350),
        RecommendedTrip(
            title: "Moravian Karst & Macocha Abyss",
            imageName: "macochaAbyss",
            description: "Day trip to stunning caves and one of Europe’s deepest gorges.",
            highlights: ["Punkva caves", "Boat ride", "Cable car to Macocha"],
            estimatedCostCZK: 400),
        RecommendedTrip(
            title: "Brno Zoo",
            imageName: "brnoZoo",
            description: "Family-friendly animal park with local and exotic wildlife.",
            highlights: ["Tigers and lions", "Playgrounds", "Scenic nature paths"],
            estimatedCostCZK: 200),
        RecommendedTrip(
            title: "Brno Reservoir Cruise",
            imageName: "brnoReservoir",
            description: "Relax on a cruise across the scenic Brno dam and visit Veveří Castle.",
            highlights: ["Boat ride", "Castle access", "Lakeside refreshments"],
            estimatedCostCZK: 180),
        RecommendedTrip(
            title: "Technical Museum Brno",
            imageName: "technicalMuseum",
            description: "Showcasing Czech innovation and engineering across decades.",
            highlights: ["Retro technology", "Vehicles", "Historic machinery"],
            estimatedCostCZK: 150),
        RecommendedTrip(
            title: "Lužánky Park & Villa Löw-Beer",
            imageName: "luzankyPark",
            description: "Stroll through Brno’s oldest park and visit the elegant villa nearby.",
            highlights: ["Peaceful nature", "Café break", "Historic architecture"],
            estimatedCostCZK: 100)
    ]
}

//
//  AllPlacesData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import Foundation

struct AllPlacesData {
    
    static func generateAllPlaces() -> [Place] {
        var result: [Place] = []

        for place in FoodData.places {
            result.append(
                Place(name: place.name, location: "📍 Brno", category: .food)
            )
        }

        for trip in RecommendedTripData.trips {
            result.append(
                Place(name: trip.title, location: "📍 Brno", category: .trips)
            )
        }

        for spot in NatureSpotData.spots {
            result.append(
                Place(name: spot.title, location: "📍 Brno", category: .nature)
            )
        }

        for team in BrnoSportTeamData.teams {
            result.append(
                Place(name: team.name, location: "📍 Brno", category: .sports)
            )
        }

        for uni in UniversityData.universities {
            result.append(
                Place(name: uni.name, location: "📍 Brno", category: .universities)
            )
        }

        for area in VisitedAreaData.areas {
            result.append(
                Place(name: area.name, location: "📍 Brno", category: .mostVisited)
            )
        }
        return result
    }
}

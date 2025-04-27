//
//  PromotionData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 27/04/2025.
//

import SwiftUI

struct PromotionData {
    static let cards: [PromotionCard] = [
        PromotionCard(title: "Brno Population", subtitle: "Approx. 382,000", destination: AnyView(PopulationDetailView())),
        PromotionCard(title: "Most Visited Areas", subtitle: "Discover Brno’s top spots", destination: AnyView(MostVisitedAreasView())),
        PromotionCard(title: "Food in Brno", subtitle: "Restaurants, cafés & eats", destination: AnyView(BrnoFoodView())),
        PromotionCard(title: "Universities in Brno", subtitle: "Explore top institutions", destination: AnyView(BrnoUniversitiesView())),
        PromotionCard(title: "Recommended Trips", subtitle: "Day trips & hidden gems", destination: AnyView(RecommendedTripsView())),
        PromotionCard(title: "Nature in Brno", subtitle: "Parks, lakes & nature", destination: AnyView(BrnoNatureView())),
        PromotionCard(title: "Competitive Sports", subtitle: "Clubs & major events", destination: AnyView(CompetitiveSportsView()))
    ]
}

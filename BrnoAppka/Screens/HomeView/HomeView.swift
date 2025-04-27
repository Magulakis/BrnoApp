//
//  HomeView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI
import MapKit

struct PromotionCard: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let destination: AnyView
}

struct HomeView: View {
    
    @EnvironmentObject var placeStore: PlaceStore
    @Binding var resetTrigger: Bool
    @State private var path = NavigationPath()
    @State private var searchText: String = ""
    @State private var selectedCategory: PlaceCategory = .all

    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    header
                    SearchBarView(searchText: $searchText)
                        .padding(.horizontal)

                    promotionSection
                    categorySection
                }
                .frame(maxWidth: .infinity)
                Spacer()
                    .frame(height: 100) 
            }
            .scrollIndicators(.hidden)
            .onChange(of: resetTrigger) {
                withAnimation {
                    path = NavigationPath()
                }
            }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "location.fill")
                    .foregroundStyle(Color.brandDarkGreen)
                Text("Brno, Czech Republic")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                Spacer()
            }
            .padding(.leading)

            Text("Where you wanna go?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.leading)
        }
    }

    private var promotionSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Promotions")
                .font(.headline)
                .padding(.leading)

            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(PromotionData.cards.indices, id: \.self) { index in
                        let card = PromotionData.cards[index]
                        NavigationLink(destination: card.destination) {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.brandSoftSand.opacity(0.4))
                                .frame(width: 180, height: 100)
                                .overlay(
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(card.title)
                                            .font(.subheadline.bold())
                                            .foregroundStyle(.primary)
                                        Text(card.subtitle)
                                            .font(.caption)
                                            .foregroundStyle(.secondary)
                                        Spacer()
                                        Text("Tap for more")
                                            .font(.caption2)
                                            .foregroundStyle(Color.white)
                                            .padding(.horizontal, 6)
                                            .padding(.vertical, 3)
                                            .background(Color.brandWarmRose)
                                            .cornerRadius(8)
                                    }
                                    .padding(.horizontal)
                                    .padding(.vertical, 8),
                                    alignment: .bottomLeading
                                )
                                .padding(.leading, index == 0 ? 5 : 0)
                                .padding(.trailing, index == PromotionData.cards.count - 1 ? 16 : 0)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    @ViewBuilder
    private var categorySection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Category")
                .font(.headline)
                .padding(.leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(PlaceCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(selectedCategory == category ? Color.brandWarmRose : Color.brandSoftSand.opacity(0.4))
                            .cornerRadius(20)
                            .lineLimit(1)
                            .minimumScaleFactor(0.7)
                            .onTapGesture {
                                withAnimation {
                                    selectedCategory = category
                                }
                            }
                    }
                }
                .padding(.leading, 0.2)
            }

            let places = placeStore.allPlacesMatching(searchText: searchText, category: selectedCategory)

            VStack(spacing: 15) {
                ForEach(places, id: \.id) { place in
                    NavigationLink(destination: destinationView(for: place)) {
                        DestinationCardView(
                            place: place,
                            toggleFavorite: {
                                placeStore.toggleFavorite(for: place)
                            }
                        )
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding([.leading, .bottom, .trailing])
        }
    }

    func destinationView(for place: Place) -> some View {
        switch place.category {
        case .food: return AnyView(BrnoFoodView())
        case .trips: return AnyView(RecommendedTripsView())
        case .nature: return AnyView(BrnoNatureView())
        case .sports: return AnyView(CompetitiveSportsView())
        case .universities: return AnyView(BrnoUniversitiesView())
        case .mostVisited: return AnyView(MostVisitedAreasView())
        case .all: return AnyView(HomeView(resetTrigger: $resetTrigger))
        }
    }
}

#Preview {
    HomeView(resetTrigger: .constant(false))
        .environmentObject(PlaceStore())
}

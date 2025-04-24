//
//  FavouritesView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI

struct FavouritesView: View {
    
    @EnvironmentObject var placeStore: PlaceStore

    var body: some View {
        NavigationStack {
            let favoritePlaces = placeStore.places.filter { $0.isFavorite }

            if favoritePlaces.isEmpty {
                VStack(spacing: 16) {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.brandDarkGreen)

                    Text("No favourites found in Brno")
                        .font(.headline)
                        .foregroundStyle(Color.brandDarkGreen)
                }
                .padding()
                .navigationTitle("Favourites")
            } else {
                List {
                    ForEach(placeStore.places.indices, id: \.self) { index in
                        let place = placeStore.places[index]

                        if place.isFavorite {
                            DestinationCardView(
                                place: place,
                                toggleFavorite: {
                                    withAnimation {
                                        placeStore.places[index].isFavorite.toggle()
                                    }
                                }
                            )
                            .listRowSeparator(.hidden)
                            .swipeActions {
                                Button(role: .destructive) {
                                    withAnimation {
                                        placeStore.places[index].isFavorite = false
                                    }
                                } label: {
                                    Label("Remove", systemImage: "trash")
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Favourites")
                .scrollIndicators(.hidden)
            }
            Spacer()
                .frame(height: 100)
        }
    }
}

#Preview {
    FavouritesView()
        .environmentObject(PlaceStore())
}

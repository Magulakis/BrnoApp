//
//  PlaceStore.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import Foundation

struct Place: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let location: String
    let imageName: String?
    let category: PlaceCategory
    var isFavorite: Bool

    init(id: UUID = UUID(), name: String, location: String, imageName: String? = nil, category: PlaceCategory, isFavorite: Bool = false) {
        self.id = id
        self.name = name
        self.location = location
        self.imageName = imageName
        self.category = category
        self.isFavorite = isFavorite
    }
}

//class PlaceStore: ObservableObject {
//    @Published var places: [Place] = AllPlacesData.generateAllPlaces() {
//        didSet {
//            saveFavorites()
//        }
//    }
//
//    private let favoritesKey = "favorite_place_ids"
//
//    init() {
//        loadFavorites()
//    }
//
//    func toggleFavorite(for place: Place) {
//        if let index = places.firstIndex(where: { $0.id == place.id }) {
//            places[index].isFavorite.toggle()
//        }
//    }
//
//    private func saveFavorites() {
//        let favoriteIDs = places
//            .filter { $0.isFavorite }
//            .map { $0.id.uuidString }
//        UserDefaults.standard.set(favoriteIDs, forKey: favoritesKey)
//    }
//
//    private func loadFavorites() {
//        guard let savedIDs = UserDefaults.standard.array(forKey: favoritesKey) as? [String] else { return }
//
//        places = places.map { place in
//            var updatedPlace = place
//            if savedIDs.contains(place.id.uuidString) {
//                updatedPlace.isFavorite = true
//            }
//            return updatedPlace
//        }
//    }
//    
//    func allPlacesMatching(searchText: String, category: PlaceCategory) -> [Place] {
//        let normalizedSearchText = searchText.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current)
//
//        return places.filter { place in
//            let matchesCategory = category == .all || place.category == category
//            let matchesSearch = searchText.isEmpty || place.name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current).contains(normalizedSearchText)
//            return matchesCategory && matchesSearch
//        }
//    }
//}

import Foundation

class PlaceStore: ObservableObject {
    @Published var places: [Place] = [] {
        didSet {
            savePlaces()
        }
    }

    private let saveKey = "SavedPlaces"

    init() {
        loadPlaces()
    }

    // MARK: Save
    private func savePlaces() {
        do {
            let data = try JSONEncoder().encode(places)
            UserDefaults.standard.set(data, forKey: saveKey)
        } catch {
            print("Error saving places: \(error)")
        }
    }

    // MARK: Load
    private func loadPlaces() {
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Place].self, from: data) {
            self.places = decoded
        } else {
            self.places = AllPlacesData.generateAllPlaces()
        }
    }

    // MARK: Favorites
    func toggleFavorite(for place: Place) {
        if let index = places.firstIndex(where: { $0.id == place.id }) {
            places[index].isFavorite.toggle()
        }
    }

    // MARK: Filtered search
    func allPlacesMatching(searchText: String, category: PlaceCategory) -> [Place] {
        let normalizedSearchText = searchText.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current)
        return places.filter { place in
            let matchesCategory = category == .all || place.category == category
            let matchesSearch = searchText.isEmpty || place.name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current).contains(normalizedSearchText)
            return matchesCategory && matchesSearch
        }
    }
}

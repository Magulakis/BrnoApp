//
//  PlaceSearchHelper.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import Foundation

struct PlaceSearchHelper {
    static func filteredPlaces(searchText: String, store: PlaceStore) -> [Place] {
        let allPlaces = store.places

        if searchText.isEmpty {
            return allPlaces
        }

        return allPlaces.filter {
            $0.name.folding(options: [.diacriticInsensitive, .caseInsensitive], locale: .current)
                .contains(searchText)
        }
    }
}

//
//  FoodAnnotation.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import MapKit

struct FoodAnnotation: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

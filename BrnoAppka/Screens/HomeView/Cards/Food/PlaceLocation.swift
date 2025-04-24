//
//  PlaceLocation.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation
import MapKit

struct PlaceLocation: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

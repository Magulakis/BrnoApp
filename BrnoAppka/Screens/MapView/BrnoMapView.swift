//
//  BrnoMapView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI
import MapKit

struct BrnoMapView: View {
    
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 49.1951, longitude: 16.6068),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    )

    let annotations: [FoodAnnotation] = FoodData.places.map {
        FoodAnnotation(name: $0.name, coordinate: CLLocationCoordinate2D(latitude: $0.latitude!, longitude: $0.longitude!))
    }

    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(annotations) { place in
                Annotation(place.name, coordinate: place.coordinate) {
                    VStack(spacing: 4) {
                        Image(systemName: "fork.knife.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.brandWarmRose)
                            .background(Circle().fill(Color.white).shadow(radius: 3))

                        Text(place.name)
                            .font(.caption2)
                            .padding(4)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(6)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BrnoMapView()
}

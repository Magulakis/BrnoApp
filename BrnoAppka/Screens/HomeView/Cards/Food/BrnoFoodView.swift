//
//  BrnoFoodView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 18/04/2025.
//

import SwiftUI
import MapKit

struct BrnoFoodView: View {
    
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Cafe & Sweets", "Bar"]
    @State private var selectedCategory = "All"
    @State private var selectedPlaceForMap: FoodPlace?
    @State private var showPicker = false


    var filteredPlaces: [FoodPlace] {
        if selectedCategory == "All" {
            return FoodData.places
        } else {
            return FoodData.places.filter { $0.category == selectedCategory }
        }
    }

    var body: some View {
        NavigationStack {
            ZStack(alignment: .topTrailing) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        LazyVStack(spacing: 16) {
                            ForEach(filteredPlaces, id: \ .id) { place in
                                FoodPlaceRowView(
                                    place: place,
                                    onLocationTap: { selectedPlaceForMap = $0 }
                                )
                            }
                        }
                        .padding(.horizontal)
                        Spacer()
                            .frame(height: 100) 
                    }
                }
                .scrollIndicators(.hidden)
                .blur(radius: showPicker ? 5 : 0)
                .disabled(showPicker)
                .padding()

                if showPicker {
                    FoodCategoryFilterCard(categories: categories, selectedCategory: $selectedCategory, showPicker: $showPicker)
                        .zIndex(1)
                }
            }
            .navigationTitle("Food in Brno")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation {
                            showPicker.toggle()
                        }
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .padding(7)
                            .background(Color.brandWarmRose)
                            .clipShape(Circle())
                    }
                }
            }
            .sheet(item: $selectedPlaceForMap) { place in
                NavigationView {
                    Map(coordinateRegion: .constant(MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: place.latitude!, longitude: place.longitude!),
                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                    )), annotationItems: [place]) { item in
                        MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: item.latitude!, longitude: item.longitude!)) {
                            VStack {
                                Image(systemName: "fork.knife")
                                    .padding(8)
                                    .background(Color.brandWarmRose)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                                Text(item.name)
                                    .font(.caption)
                                    .padding(4)
                                    .background(.thinMaterial)
                                    .cornerRadius(6)
                            }
                        }
                    }
                    .ignoresSafeArea()
                }
            }
        }
    }
}

#Preview {
    BrnoFoodView()
}

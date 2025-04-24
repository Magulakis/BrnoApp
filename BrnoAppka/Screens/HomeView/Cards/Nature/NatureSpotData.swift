//
//  NatureSpotData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import Foundation

struct NatureSpotData {
    static let spots: [NatureSpot] = [
        NatureSpot(
            title: "Denisovy Sady",
            imageName: "denisovySady",
            description: "A peaceful park with stunning views of Petrov Cathedral and the city skyline.",
            highlights: ["Petrov views", "Romantic terraces", "City panoramas"]),
        NatureSpot(
            title: "Kamenný vrch",
            imageName: "kamennyVrch",
            description: "Famous for its rare steppe flora and early spring blooms of Pulsatilla.",
            highlights: ["Wildflowers", "Nature reserve", "Panoramic views"]),
        NatureSpot(
            title: "Špilberk Park",
            imageName: "spilberkPark",
            description: "Surrounding Špilberk Castle, this green hilltop park offers trails and historical ambiance.",
            highlights: ["Castle paths", "City views", "Old stone walls"]),
        NatureSpot(
            title: "Holedná Rozhledna",
            imageName: "holednaReserve",
            description: "A large game park with deer and wild boar, perfect for families.",
            highlights: ["Deer & wild boar", "Observation tower", "Easy trails"]),
        NatureSpot(
            title: "Žlutý kopec",
            imageName: "zlutyKopec",
            description: "Underrated hill with views over Brno, often peaceful and quiet.",
            highlights: ["City views", "Hilltop benches", "Sunsets"]),
        NatureSpot(
            title: "Čertova rokle",
            imageName: "certovaRokle",
            description: "A wild gorge with footbridges and a magical atmosphere just outside the city.",
            highlights: ["Rocky terrain", "Wooden walkways", "Nature photography"])
    ]
}

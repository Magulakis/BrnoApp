//
//  VisitedAreaData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import Foundation

struct VisitedAreaData {
    static let areas: [VisitedArea] = [
        VisitedArea(
            name: "Areál Vlněna",
            imageName: "vlnena",
            description: "Vlněna sees its peak on Tuesdays before noon, with lower traffic on Fridays and weekends."
        ),
        VisitedArea(
            name: "Areál Mendelovy univerzity",
            imageName: "mendelu",
            description: "Visitor count doubles during academic terms compared to holidays or exam periods."
        ),
        VisitedArea(
            name: "Ohňostroje Ignis Brunensis",
            imageName: "ignis",
            description: "The fireworks festival peaks at 22:30, attracting massive crowds to the lakefront."
        ),
        VisitedArea(
            name: "Brněnský Majáles",
            imageName: "majales",
            description: "Attendance builds rapidly until headline acts perform from 18:00 to 22:00."
        )
    ]
}

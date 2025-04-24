//
//  BrnoSportTeamData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import Foundation

struct BrnoSportTeamData {
    static let teams: [BrnoSportTeam] = [
        BrnoSportTeam(
            name: "HC Kometa Brno",
            sport: "Ice Hockey",
            imageName: "kometaBrno",
            description: "One of the most successful hockey clubs in Czech history with a huge fan base.",
            stadiumAddress: "Winning Group Arena, Křídlovická 911, Brno"
        ),
        BrnoSportTeam(
            name: "FC Zbrojovka Brno",
            sport: "Football",
            imageName: "zbrojovkaBrno",
            description: "Legendary football club representing Brno with a passionate local following.",
            stadiumAddress: "Městský fotbalový stadion Srbská, Srbská 47a, Brno"
        ),
        BrnoSportTeam(
            name: "Basket Brno",
            sport: "Basketball",
            imageName: "basketBrno",
            description: "Top-level men's basketball team competing in the Czech national league.",
            stadiumAddress: "Sportovní hala Vodova, Vodova 108, Brno"
        ),
        BrnoSportTeam(
            name: "KP Brno",
            sport: "Women's Basketball",
            imageName: "kpBrno",
            description: "Elite women's basketball team known for national and European competition success.",
            stadiumAddress: "Hala Vodova, Vodova 108, Brno"
        ),
        BrnoSportTeam(
            name: "Draci Brno",
            sport: "Baseball",
            imageName: "draciBrno",
            description: "The most successful baseball team in Czech Republic with multiple titles.",
            stadiumAddress: "Hřiště Městského baseballového areálu, Sokolova 2h, Brno"
        )
    ]
}

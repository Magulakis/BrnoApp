//
//  FoodData.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import SwiftUI

struct FoodData {
    static let places: [FoodPlace] = [
        FoodPlace(
            name: "Stopkova Plzeňská Pivnice",
            description: "Traditional Czech cuisine and beer in the heart of Brno.",
            category: "Lunch",
            imageName: "stopkova",
            websiteURL: URL(string: "https://stopkova.kolkovna.cz"),
            contact: "+420 542 211 094",
            locationURL: URL(string: "https://maps.apple.com/?q=Stopkova%20Plze%C5%88sk%C3%A1%20Pivnice&ll=49.195645,16.606680"),
            latitude: 49.195645,
            longitude: 16.606680
        ),
        FoodPlace(
            name: "Bar, který neexistuje",
            description: "Famous Brno cocktail bar with a creative atmosphere.",
            category: "Bar",
            imageName: "barkteryneexistuje",
            websiteURL: URL(string: "https://www.barkteryneexistuje.cz/bar"),
            contact: "+420 605 500 506",
            locationURL: URL(string: "https://maps.apple.com/?q=Bar,%20kter%C3%BD%20neexistuje&ll=49.195895,16.609823"),
            latitude: 49.195895,
            longitude: 16.609823
        ),
        FoodPlace(
            name: "MLSNÁ HOLKA",
            description: "Cute bakery and bistro offering sweet and savory snacks.",
            category: "Cafe & Sweets",
            imageName: "mlsnaholka",
            websiteURL: URL(string: "https://mlsna-holka.cz"),
            contact: "+420 720 292 098",
            locationURL: URL(string: "https://maps.apple.com/?q=MLSN%C3%81%20HOLKA&ll=49.195120,16.610038"),
            latitude: 49.195120,
            longitude: 16.610038
        ),
        FoodPlace(
            name: "Kafe Friedrich",
            description: "Cozy cafe with top-notch coffee and desserts.",
            category: "Cafe & Sweets",
            imageName: "friedrich",
            websiteURL: URL(string: "https://kafefriedrich.cz"),
            contact: "+420 775 147 517",
            locationURL: URL(string: "https://maps.apple.com/?q=Kafe%20Friedrich&ll=49.203244,16.604964"),
            latitude: 49.203244,
            longitude: 16.604964
        ),
        FoodPlace(
            name: "Arctica Gelato",
            description: "Handmade Italian gelato with seasonal flavors.",
            category: "Cafe & Sweets",
            imageName: "arctica",
            websiteURL: URL(string: "https://www.facebook.com/profile.php?id=100081055939220&locale=sk_SK"),
            contact: nil,
            locationURL: URL(string: "https://maps.apple.com/?q=Arctica%20Gelato&ll=49.193099,16.610450"),
            latitude: 49.193099,
            longitude: 16.610450
        ),
        FoodPlace(
            name: "Ještě jednu",
            description: "Craft beer bar in the heart of Brno.",
            category: "Bar",
            imageName: "jestejednu",
            websiteURL: URL(string: "https://www.jestejednu.cz"),
            contact: "+420 731 303 373",
            locationURL: URL(string: "https://maps.apple.com/?q=Je%C5%A1t%C4%9B%20jednu&ll=49.194275,16.610665"),
            latitude: 49.194275,
            longitude: 16.610665
        ),
        FoodPlace(
            name: "Monogram Espresso Bar",
            description: "Modern espresso bar with professional baristas.",
            category: "Cafe & Sweets",
            imageName: "monogram",
            websiteURL: URL(string: "https://www.monogramespressobar.cz"),
            contact: "+420 731 503 772",
            locationURL: URL(string: "https://maps.apple.com/?q=Monogram%20Espresso%20Bar&ll=49.191768,16.609941"),
            latitude: 49.191768,
            longitude: 16.609941
        ),
        FoodPlace(
            name: "Manya Izakaya",
            description: "Authentic Japanese izakaya in Brno.",
            category: "Dinner",
            imageName: "manya",
            websiteURL: URL(string: "https://www.manyabrno.cz"),
            contact: "+420 777 904 878",
            locationURL: URL(string: "https://maps.apple.com/?q=Manya%20Izakaya&ll=49.193204,16.609043"),
            latitude: 49.193204,
            longitude: 16.609043
        ),
        FoodPlace(
            name: "Kohout NA VÍNĚ",
            description: "Stylish restaurant and wine bar.",
            category: "Dinner",
            imageName: "kohoutnavine",
            websiteURL: URL(string: "https://www.knvrestaurant.cz/en/"),
            contact: "+420 774 427 209",
            locationURL: URL(string: "https://maps.apple.com/?q=Kohout%20NA%20V%C3%8DN%C4%9A&ll=49.196257,16.614472"),
            latitude: 49.196257,
            longitude: 16.614472
        ),
        FoodPlace(
            name: "Domovina",
            description: "Tasty and healthy Czech food in the city center.",
            category: "Lunch",
            imageName: "domovina",
            websiteURL: URL(string: "https://zelnytrh10.cz/podniky/bistro-domovina/"),
            contact: "+420 777 277 029",
            locationURL: URL(string: "https://maps.apple.com/?q=Domovina&ll=49.192077,16.607735"),
            latitude: 49.192077,
            longitude: 16.607735
        ),
        FoodPlace(
            name: "Kafec Brněnský",
            description: "Great brunch and specialty coffee.",
            category: "Breakfast",
            imageName: "kafec",
            websiteURL: URL(string: "https://www.kafec.cz"),
            contact: "+420 734 755 311",
            locationURL: URL(string: "https://maps.apple.com/?q=Kafec%20Brnensky&ll=49.193281,16.611302"),
            latitude: 49.193281,
            longitude: 16.611302
        ),
        FoodPlace(
            name: "4pokoje",
            description: "Trendy bar with unique cocktails and food.",
            category: "Bar",
            imageName: "4pokoje",
            websiteURL: URL(string: "https://www.miluju4pokoje.cz/cocktail-bar"),
            contact: "+420 775 884 880",
            locationURL: URL(string: "https://maps.apple.com/?q=4pokoje&ll=49.195751,16.611818"),
            latitude: 49.195751,
            longitude: 16.611818
        ),
        FoodPlace(
            name: "Cafe Podnebí",
            description: "Cafe with a garden terrace and peaceful vibe.",
            category: "Cafe & Sweets",
            imageName: "podnebi",
            websiteURL: URL(string: "https://www.podnebi.cz"),
            contact: "+420 777 860 696",
            locationURL: URL(string: "https://maps.apple.com/?q=Cafe%20Podnebi&ll=49.196037,16.602085"),
            latitude: 49.196037,
            longitude: 16.602085
        ),
        FoodPlace(
            name: "Bavard cafe a bar",
            description: "Cozy cafe and bar with a great selection of drinks.",
            category: "Cafe & Sweets",
            imageName: "bavard",
            websiteURL: URL(string: "https://www.facebook.com/bavardcafeabar/?locale=sk_SK"),
            contact: "+420 775 323 733",
            locationURL: URL(string: "https://maps.apple.com/?q=Bavard%20cafe%20a%20bar&ll=49.194843,16.609960"),
            latitude: 49.194843,
            longitude: 16.609960
        )
    ]
}

//
//  BrnoAppkaApp.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 17/04/2025.
//

import SwiftUI

@main
struct BrnoApp: App {
    @StateObject private var placeStore = PlaceStore()
    @StateObject private var memoryStore = MemoryStore()

    var body: some Scene {
        WindowGroup {
            BrnoTabView()
                .environmentObject(placeStore)
                .environmentObject(memoryStore)
                .preferredColorScheme(.light)
        }
    }
}

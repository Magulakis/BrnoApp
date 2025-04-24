//
//  TabRouter.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

class TabRouter: ObservableObject {
    @Published var selectedTab: Tab = .home
    @Published var homeResetTrigger = false
    
    enum Tab {
        case home, map, favorites, profile
    }

    func handleTabTap(_ tab: Tab) {
        if selectedTab == tab {
            if tab == .home {
                homeResetTrigger.toggle()
            }
        } else {
            selectedTab = tab
        }
    }
}

//
//  HomeView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 17/04/2025.
//

import SwiftUI


struct BrnoTabView: View {
    
    @StateObject private var tabManager = TabSelectionManager()
    @StateObject private var viewModel = BrnoViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                switch tabManager.selectedTab {
                case .home:
                    HomeView(resetTrigger: .constant(false))
                        .id(tabManager.homeResetId)
                        .edgesIgnoringSafeArea(.bottom)
                case .map:
                    BrnoMapView()

                case .favorites:
                    FavouritesView()

                case .profile:
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            CustomTabBarView(selectedTab: $tabManager.selectedTab) {
                if tabManager.selectedTab == .home {
                    tabManager.resetHome()
                }
            }
        }
        .ignoresSafeArea(.keyboard)
        .background(Color.white)
        .environmentObject(tabManager)
    }
}

class TabSelectionManager: ObservableObject {
    
    @Published var selectedTab: Tab = .home
    @Published var homeResetId = UUID()

    func resetHome() {
        homeResetId = UUID()
    }
}


#Preview {
    BrnoTabView()
        .environmentObject(PlaceStore())
        .preferredColorScheme(.light)
}

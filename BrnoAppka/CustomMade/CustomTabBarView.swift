//
//  CustomTabBarView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI


struct CustomTabBarView: View {
    
    @Binding var selectedTab: Tab
    var onHomeTap: () -> Void

    var body: some View {
        HStack(spacing: 55) {
            tabBarButton(icon: "house.fill", tab: .home)
            tabBarButton(icon: "map.fill", tab: .map)
            tabBarButton(icon: "heart.fill", tab: .favorites)
            tabBarButton(icon: "person.fill", tab: .profile)
        }
        .padding(.top, 10)
        .padding(.bottom, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .shadow(radius: 3)
    }

    private func tabBarButton(icon: String, tab: Tab) -> some View {
        Button {
            if tab == .home {
                onHomeTap()
            }
            selectedTab = tab
        } label: {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(selectedTab == tab ? .brandWarmRose : .gray)
                .padding(12)
        }
    }
}

//
//  PlaceCategoryPickerView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import SwiftUI

struct PlaceCategoryPickerView: View {
    
    @Binding var selectedCategory: PlaceCategory

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(PlaceCategory.allCases, id: \.self) { category in
                    Text(category.rawValue)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(selectedCategory == category ? Color.brandWarmRose : Color.brandSoftSand.opacity(0.4))
                        .cornerRadius(20)
                        .lineLimit(1)
                        .minimumScaleFactor(0.7)
                        .onTapGesture {
                            withAnimation {
                                selectedCategory = category
                            }
                        }
                }
            }
            .padding(.leading, 0.2)
        }
    }
}

//
//  FoodCategoryFilteredCard.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 23/04/2025.
//

import SwiftUI

struct FoodCategoryFilterCard: View {
    
    let categories: [String]
    @Binding var selectedCategory: String
    @Binding var showPicker: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(categories, id: \.self) { category in
                Text(category)
                    .font(.subheadline)
                    .foregroundColor(selectedCategory == category ? .white : .primary)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(selectedCategory == category ? Color.brandDarkGreen : Color.clear)
                    .cornerRadius(15)
                    .onTapGesture {
                        selectedCategory = category
                        withAnimation {
                            showPicker = false
                        }
                    }
            }
        }
        .padding()
        .background(Color.brandSoftSand.opacity(0.95))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 5)
        .padding(.trailing)
        .padding(.top, 60)
        .transition(.move(edge: .top).combined(with: .opacity))
    }
}

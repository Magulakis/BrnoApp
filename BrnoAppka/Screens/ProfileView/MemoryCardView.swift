//
//  MemoryCardView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import SwiftUI

struct MemoryCardView: View {
    
    let image: UIImage
    let description: String
    let onTap: () -> Void

    var body: some View {
        VStack(spacing: 8) {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .cornerRadius(10)
                .onTapGesture {
                    onTap()
                }

            Text(description)
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(2)
        }
        .padding()
    }
}

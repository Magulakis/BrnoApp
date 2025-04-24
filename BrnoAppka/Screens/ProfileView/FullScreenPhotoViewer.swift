//
//  FullScreenPhotoViewer.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import SwiftUI

struct FullscreenPhotoViewer: View {
    @Binding var selectedIndex: Int
    @Binding var isPresented: Bool
    let images: [UIImage]
    let onDelete: (Int) -> Void

    var body: some View {
        ZStack {
            if !images.isEmpty {
                TabView(selection: $selectedIndex) {
                    ForEach(images.indices, id: \.self) { index in
                        Image(uiImage: images[index])
                            .resizable()
                            .scaledToFit()
                            .tag(index)
                            .background(Color.black)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .background(Color.black.ignoresSafeArea())

                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            onDelete(selectedIndex)
                        }) {
                            Image(systemName: "trash")
                                .padding()
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                        }
                        .padding()
                    }
                    Spacer()
                }
            } else {
                Text("No Image")
                    .foregroundColor(.gray)
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
        .onTapGesture {
            isPresented = false
        }
    }
}

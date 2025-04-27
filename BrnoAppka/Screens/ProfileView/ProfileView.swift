//
//  ProfileView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {

    @EnvironmentObject var memoryStore: MemoryStore
    @State private var showAddSheet: Bool = false
    @State private var selectedPhotoIndex: Int = 0
    @State private var isPhotoViewerPresented = false

    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                content

                VStack {
                    cameraButton
                    Spacer()
                        .frame(height: 100)
                }
            }
            .navigationTitle("Profile")
            .sheet(isPresented: $showAddSheet) {
                AddMemorySheet()
                    .environmentObject(memoryStore)
            }
            .sheet(isPresented: $isPhotoViewerPresented) {
                FullscreenPhotoViewer(
                    selectedIndex: $selectedPhotoIndex,
                    isPresented: $isPhotoViewerPresented,
                    images: memoryStore.memories.compactMap { memoryStore.loadImage(from: $0.imageFilename) },
                    onDelete: handleMemoryDeletion
                )
            }
        }
    }

    // MARK: - Subviews

    private var content: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    if memoryStore.memories.isEmpty {
                        emptyState
                    } else {
                        memoriesGrid
                    }
                }
                .padding()
            }
        }
    }

    private var emptyState: some View {
        VStack(spacing: 16) {
            Image(systemName: "photo.on.rectangle.angled")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.brandDarkGreen)

            Text("Add your memories from Brno")
                .font(.headline)
                .foregroundStyle(Color.brandDarkGreen)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 100)
    }

    private var memoriesGrid: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(Array(memoryStore.memories.enumerated()), id: \.element.id) { index, memory in
                if let image = memoryStore.loadImage(from: memory.imageFilename) {
                    VStack(spacing: 8) {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .clipped()
                            .cornerRadius(7)
                            .onTapGesture {
                                selectedPhotoIndex = index
                                isPhotoViewerPresented = true
                            }

                        Text(memory.description)
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .lineLimit(2)
                    }
                    .padding(6)
                }
            }
        }
        .padding(.horizontal)
    }

    private var cameraButton: some View {
        Button {
            showAddSheet = true
        } label: {
            Image(systemName: "camera")
                .font(.title2)
                .padding(12)
                .background(Color.brandDarkGreen)
                .foregroundStyle(.white)
                .clipShape(Circle())
                .shadow(radius: 3)
        }
        .padding(.trailing, 20)
        .padding(.bottom, 10)
    }

    // MARK: - Private Methods

    private func handleMemoryDeletion(at index: Int) {
        let memoryToDelete = memoryStore.memories[index]
        memoryStore.deleteMemory(memoryToDelete)

        if memoryStore.memories.isEmpty {
            isPhotoViewerPresented = false
        } else if selectedPhotoIndex >= memoryStore.memories.count {
            selectedPhotoIndex = max(0, memoryStore.memories.count - 1)
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(MemoryStore())
}

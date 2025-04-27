//
//  AddMemorySheet.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 19/04/2025.
//

import SwiftUI
import PhotosUI

struct Memory: Identifiable, Codable, Equatable {
    let id: UUID
    var imageFilename: String
    var description: String
}

struct AddMemorySheet: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var memoryStore: MemoryStore
    @State private var selectedPhoto: PhotosPickerItem? = nil
    @State private var image: UIImage? = nil
    @State private var descriptionText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                photoPickerSection
                descriptionFieldSection
                saveButtonSection
                Spacer()
            }
            .padding()
            .navigationTitle("New Memory")
            .navigationBarTitleDisplayMode(.inline)
        }

        .onChange(of: selectedPhoto) {
            Task {
                if let data = try? await selectedPhoto?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    image = uiImage
                }
            }
        }
    }
    
    private var photoPickerSection: some View {
        PhotosPicker(selection: $selectedPhoto, matching: .images) {
            ZStack {
                if let image = image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(12)
                } else {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 250)
                        .overlay(
                            VStack {
                                Image(systemName: "photo")
                                    .font(.system(size: 40))
                                    .foregroundStyle(.gray)
                                Text("Tap to select photo")
                                    .foregroundStyle(.gray)
                            }
                        )
                }
            }
        }
    }

    private var descriptionFieldSection: some View {
        TextField("Where were you or what happened?", text: $descriptionText)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }

    private var saveButtonSection: some View {
        Button("Save Memory") {
            saveMemory()
        }
        .padding()
        .background(Color.brandDarkGreen)
        .foregroundStyle(.white)
        .cornerRadius(10)
    }

    private func saveMemory() {
        if let image = image, !descriptionText.isEmpty {
            if let filename = memoryStore.saveImageToDisk(image) {
                let memory = Memory(id: UUID(), imageFilename: filename, description: descriptionText)
                memoryStore.memories.append(memory)
                dismiss()
            }
        }
    }
}


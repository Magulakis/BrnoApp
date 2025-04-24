//
//  MemoryStore.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 21/04/2025.
//

import SwiftUI

class MemoryStore: ObservableObject {
    @Published var memories: [Memory] = [] {
        didSet { saveMemories() }
    }

    private let saveKey = "SavedMemories"

    init() {
        loadMemories()
    }

    func deleteMemory(_ memory: Memory) {
        if let index = memories.firstIndex(of: memory) {
            memories.remove(at: index)
            deleteImageFromDisk(memory.imageFilename)
        }
    }

    private func saveMemories() {
        if let encoded = try? JSONEncoder().encode(memories) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }

    private func loadMemories() {
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Memory].self, from: data) {
            self.memories = decoded
        }
    }

    func saveImageToDisk(_ image: UIImage) -> String? {
        guard let data = image.jpegData(compressionQuality: 0.8) else { return nil }
        let filename = UUID().uuidString + ".jpg"
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        do {
            try data.write(to: url)
            return filename
        } catch {
            print("Error saving image: \(error)")
            return nil
        }
    }

    func loadImage(from filename: String) -> UIImage? {
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        return UIImage(contentsOfFile: url.path)
    }

    private func deleteImageFromDisk(_ filename: String) {
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        try? FileManager.default.removeItem(at: url)
    }

    private func getDocumentsDirectory() -> URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}

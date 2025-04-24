//
//  BrnoViewModel.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import Foundation

final class BrnoViewModel: ObservableObject {
    
    @Published var isLoading = false
    
    func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoading = false
        }
    }
}

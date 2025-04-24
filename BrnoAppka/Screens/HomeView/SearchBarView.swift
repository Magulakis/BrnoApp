//
//  SearchBarView.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 24/04/2025.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String

    var body: some View {
            TextField("Search", text: $searchText)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
    }
}

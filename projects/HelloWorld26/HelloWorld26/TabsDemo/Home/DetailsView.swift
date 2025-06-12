//
//  DetailsView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        contentView
            .padding()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.large)
    }
}

private extension DetailsView {
    var contentView: some View {
        VStack(spacing: 20) {
            Image(systemName: "star.fill")
                .font(.system(size: 60))
                .foregroundStyle(.yellow)

            Text("Details View")
                .font(.title2)
                .fontWeight(.semibold)

            Text("This is the details screen that was pushed from the list view.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Spacer()
        }
    }
}

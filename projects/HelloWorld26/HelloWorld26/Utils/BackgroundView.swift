//
//  BackgroundView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct BackgroundView: View {
    private let colors: [Color]

    init(colors: [Color] = [
        .blue.opacity(0.15),
        .purple.opacity(0.15),
        .pink.opacity(0.1)
    ]) {
        self.colors = colors
    }

    var body: some View {
        LinearGradient(
            colors: colors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

#Preview {
    BackgroundView()
}

//
//  ProfileRow.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct ProfileRow: View {
    private let title: String
    private let value: String

    init(title: String, value: String) {
        self.title = title
        self.value = value
    }

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundStyle(.secondary)
            Spacer()
            Text(value)
                .font(.body)
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
        .padding(.horizontal)
    }
}

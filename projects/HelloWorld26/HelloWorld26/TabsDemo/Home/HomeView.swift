//
//  HomeView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            mainView
        }
    }
}

private extension HomeView {
    var mainView: some View {
        ZStack {
            BackgroundView()
                .ignoresSafeArea()
            scrollView
        }
        .navigationTitle("Home")
        .navigationDestination(for: String.self) { value in
            if value == "details" {
                DetailsView()
            }
        }
        .toolbar(id: "main_toolbar") {
            ToolbarItem(id: "first_item") {
                Button("First") {}
            }
            ToolbarItem(id: "second_item") {
                Button("Second") {}
            }
            ToolbarItem(id: "third_item") {
                Button("Third") {}
            }
        }
        .scrollEdgeEffectStyle(.soft, for: .top)
    }

    var scrollView: some View {
        ScrollView {
            contentView
        }
    }

    var contentView: some View {
        VStack(spacing: 20) {
            detailsNavLink
            listContent
        }
        .padding()
    }

    var detailsNavLink: some View {
        NavigationLink(value: "details") {
            HStack {
                Image(systemName: "arrow.right.circle.fill")
                Text("Go to Details")
            }
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
        }
    }

    var listContent: some View {
        ForEach(1...10, id: \.self) { index in
            VStack(alignment: .leading, spacing: 8) {
                makeListItem(at: index)
            }
            .padding()
            .background(.regularMaterial)
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
        }
    }

    @ViewBuilder
    func makeListItem(at index: Int) -> some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
            Text("Item \(index)")
                .font(.headline)
            Spacer()
        }
        Text(
            "This is item number \(index) with some descriptive text to show how scrolling works."
        )
        .font(.body)
        .foregroundStyle(.secondary)
    }
}

#Preview {
    HomeView()
}

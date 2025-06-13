//
//  TabDemoView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct TabDemoView: View {
    @State private  var text = ""

    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }
            Tab("Profile", systemImage: "person.fill") {
                ProfileView()
            }
            Tab(role: .search) {
                NavigationStack {
                    Text("Search")
                }
            }
        }
        .searchable(text: $text)
        .tabBarMinimizeBehavior(
            .onScrollUp
        )
        .tabViewBottomAccessory {
            Button("😇") {}
        }
    }
}

#Preview {
    TabDemoView()
}

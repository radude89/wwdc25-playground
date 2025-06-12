//
//  TabDemoView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct TabDemoView: View {
//    @State private var text: String = ""
    var body: some View {
//        TabView {
//            Tab("Home", systemImage: "house.fill") {
                HomeView()
//            }
//            Tab("Profile", systemImage: "person.fill") {
//                ProfileView()
//            }
//            Tab(role: .search) {
//                NavigationStack {
//                    Text("Search")
//                }
//            }
//        }
//        .tabBarMinimizeBehavior(.onScrollDown)
//        .searchable(text: $text)
//        .tabViewBottomAccessory {
//            Text("🤓")
//                .padding()
//        }
    }
}

#Preview {
    TabDemoView()
}


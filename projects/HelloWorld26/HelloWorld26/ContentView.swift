//
//  ContentView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 10.06.2025.
//

import SwiftUI
import Playgrounds

enum EyeColor {
    case blue, green, brown, other
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }

    func onLoad() {
        let currentBundle = #bundle
        print(currentBundle)
    }

}

struct Person {
    let age: Int
    let name: String
    let eyeColor: EyeColor
}

#Playground {
    let person = Person(
        age: 25,
        name: "John",
        eyeColor: .blue
    )
}

#Playground {
    let greeting = "Hello"
}

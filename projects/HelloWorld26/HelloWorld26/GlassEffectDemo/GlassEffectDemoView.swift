//
//  GlassEffectDemoView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 10.06.2025.
//

import SwiftUI
import Playgrounds

struct GlassEffectDemoView: View {
    @State private var isScooterEmojiVisible = false
    @Namespace private var emojisNamespace

    var body: some View {
        ZStack {
            BackgroundView(
                colors: [
                    .blue.opacity(0.15),
                    .purple.opacity(0.15),
                ]
            )

            VStack(spacing: 24) {
                GlassEffectContainer {
                    HStack(spacing: -12) {
                        Text("Hello")
                            .padding()
                            .glassEffect()

                        Text("⭐️")
                            .padding()
                            .glassEffect()
                    }
                    .padding()
                }

                HStack(spacing: -12) {
                    Text("world!")
                        .padding()
                        .glassEffect(
                            in: .rect(cornerRadius: 4),
                        )

                    Text("😻")
                        .padding()
                        .glassEffect(
                            .regular.tint(.mint)
                            .interactive()
                        )
                }

                GlassEffectContainer(spacing: 24) {
                    HStack(spacing: 24) {
                        Text("🚗")
                            .padding()
                            .glassEffect()
                            .glassEffectID(
                                "car",
                                in: emojisNamespace
                            )
                        if isScooterEmojiVisible {
                            Text("🛵")
                                .padding()
                                .glassEffect()
                                .glassEffectID(
                                    "scooter",
                                    in: emojisNamespace
                                )
                        }
                    }
                }

                Button {
                    withAnimation {
                        isScooterEmojiVisible.toggle()
                    }
                } label: {
                    Text("Play with the buttons")
                        .padding()
                }
                .buttonStyle(.glass)
            }

        }
        .ignoresSafeArea()
        .onAppear(perform: onLoad)
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

enum EyeColor {
    case blue, green, brown, other
}

#Playground {
    _ = Person(
        age: 25,
        name: "John",
        eyeColor: .blue
    )
}

#Playground {
    _ = "Hello"
}

#Preview {
    GlassEffectDemoView()
}

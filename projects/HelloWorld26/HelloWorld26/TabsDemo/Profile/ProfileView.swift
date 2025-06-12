//
//  ProfileView.swift
//  HelloWorld26
//
//  Created by Radu Dan on 12.06.2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            mainView
        }
    }
}

private extension ProfileView {
    var mainView: some View {
        ZStack {
            BackgroundView(
                colors: [
                    .green.opacity(0.3),
                    .mint.opacity(0.2),
                    .cyan.opacity(0.1)
                ]
            )
            .ignoresSafeArea()
            
            scrollView
        }
        .navigationTitle("Profile")
    }
    
    var scrollView: some View {
        ScrollView {
            contentView
                .padding()
        }
    }
    
    var contentView: some View {
        VStack(spacing: 20) {
            profileLogo
            itemsView
            editProfileButton
        }
    }
    
    var profileLogo: some View {
        VStack(spacing: 16) {
            Image(systemName: "person.fill")
                .font(.system(size: 60))
                .foregroundStyle(.green)
            
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .padding(.top, 40)
    }
    
    var itemsView: some View {
        VStack(spacing: 16) {
            ProfileRow(
                title: "Name",
                value: "John Doe"
            )
            ProfileRow(
                title: "Email",
                value: "john@example.com"
            )
            ProfileRow(
                title: "Location",
                value: "Cupertino, CA"
            )
            ProfileRow(
                title: "Joined",
                value: "January 2024"
            )
        }
    }
    
    var editProfileButton: some View {
        Button(action: {}) {
            Text("Edit Profile")
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.green)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProfileView()
}

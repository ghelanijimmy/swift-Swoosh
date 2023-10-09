//
//  ContentView.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-07.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var getStarted: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                LogoView()
                
                Text("Go All In".uppercased())
                    .font(.custom("Avenir", size: 54))
                    .foregroundStyle(.white)
                
                Text("On Going All Out".uppercased())
                    .font(.custom("Avenir", size: 26))
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                
                Text("Find a team in your city & dominate the league")
                    .font(.custom("Avenir", size: 18))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 40)
                    .padding(.top, 40)
                
                Spacer()
                
                DefaultButton(title: "Get Started") {
                    getStarted = true
                }

            } //: VSTACK
            .padding(.horizontal, 40)
            .background(
                Image(.welcomeScreenBG)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .navigationDestination(isPresented: $getStarted) {
                DesiredLeagueView()
            }
        } //: NAVSTACK
        .tint(.white)
    }
}

#Preview {
    ContentView()
}

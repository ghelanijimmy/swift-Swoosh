//
//  ContentView.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.welcomeScreenBG)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Image(.swooshLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125)
                    .padding(.bottom, 40)
                
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
                    .padding(.horizontal, 80)
                    .padding(.top, 40)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Get Started".uppercased())
                        .font(.custom("Avenir", size: 17.0))
                        .padding()
                })
                .background(.black.opacity(0.4))
                .modifier(BorderButtonModifier())
            } //: VSTACK
        } //: ZSTACK
    }
}

#Preview {
    ContentView()
}

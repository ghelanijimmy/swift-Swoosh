//
//  WhoAmI.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-09.
//

import SwiftUI

struct WhoAmI: View {
    var body: some View {
        VStack {
            LogoView()
            
            Text("I am a:".uppercased())
                .font(.custom("Avenir", size: 26))
                .fontWeight(.heavy)
                .foregroundStyle(.white)
            
            HStack(spacing: 20) {
                DefaultButton(title: "Beginner") {
                    
                }
                
                DefaultButton(title: "Baller") {
                    
                }
            } //: HSTACK
            .padding()
            
            Spacer()
        } //: VSTACK
        .padding(.horizontal, 20)
        .background(
            Image(.beginnerBallerBG)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    WhoAmI()
}

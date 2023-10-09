//
//  DesiredLeagueView.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-08.
//

import SwiftUI

struct DesiredLeagueView: View {
    var body: some View {
        
        VStack {
            LogoView()
            
            Text("Desired League")
                .foregroundStyle(.white)
                .font(.custom("Avenir", size: 18))
                .fontWeight(.medium)
            
            VStack(spacing: 20) {
                DefaultButton(title: "Mens"){
                    
                }
                
                DefaultButton(title: "Womens"){
                    
                }
                
                DefaultButton(title: "Co-ed"){
                    
                }
            }
            
            
            Spacer()
            
            DefaultButton(title: "Next") {
                
            }
        } //: VSTACK
        .padding(.horizontal, 40)
        .background(
            Image(.desiredLeagueBG)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
        )
    }
}

#Preview {
    DesiredLeagueView()
}

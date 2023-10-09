//
//  DefaultButton.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-09.
//

import SwiftUI

struct DefaultButton: View {
    // MARK: - PROPERTIES
    let title: String
    let action: () -> Void
    
    // MARK: - BODY
    var body: some View {
        Button {
            action()
        } label: {
            Spacer()
            Text(title)
                .font(.custom("Avenir", size: 17.0))
                .padding()
            Spacer()
        }
        .background(.black.opacity(0.4))
        .clipped()
        .border(.white, width: 2.0)
        .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        Color(.red)
        DefaultButton(title: "Button") {
            
        }
    }
}

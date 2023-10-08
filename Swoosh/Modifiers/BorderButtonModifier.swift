//
//  BorderButtonModifier.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-08.
//

import SwiftUI

struct BorderButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .border(.white, width: 2.0)
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    ZStack {
        Color(.black.opacity(0.4))
        Button(action: {}, label: {
            Text("Button")
                .padding()
        })
        .background(.black.opacity(0.4))
        .modifier(BorderButtonModifier())
    }
}

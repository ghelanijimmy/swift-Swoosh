//
//  LogoView.swift
//  Swoosh
//
//  Created by Jimmy Ghelani on 2023-10-09.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image(.swooshLogo)
            .resizable()
            .scaledToFit()
            .frame(width: 125)
            .padding(.bottom, 40)
    }
}

#Preview {
    LogoView()
        .background(.black.opacity(0.40))
}

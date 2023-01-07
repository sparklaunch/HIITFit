//
//  GradientBackground.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct GradientBackground: View {
    var gradient: Gradient {
        Gradient(colors: [.gray, .white, .blue])
    }
    var body: some View {
        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct GradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackground()
            .frame(width: 300, height: 300)
            .previewLayout(.sizeThatFits)
    }
}

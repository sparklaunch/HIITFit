//
//  RaisedButtonStyle.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct RaisedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding([.top, .bottom], 12)
            .background(Capsule().foregroundColor(.gray).shadow(color: .gray, radius: 4, x: 6, y: 6).shadow(color: .gray, radius: 4, x: -6, y: -6))
    }
}

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
            .background(Capsule())
    }
}

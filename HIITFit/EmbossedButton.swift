//
//  EmbossedButton.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

enum EmbossedButtonShape {
    case round
    case capsule
}

struct EmbossedButton: View {
    let buttonText: String
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text("Get Started")
                .raisedButtonTextStyle()
        }
        .buttonStyle(RaisedButtonStyle())
    }
}

struct EmbossedButton_Previews: PreviewProvider {
    static var previews: some View {
        Button {

        } label: {
            Text("History")
                .fontWeight(.bold)
        }
        .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
        .padding(40)
        .previewLayout(.sizeThatFits)
    }
}

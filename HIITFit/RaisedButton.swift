//
//  RaisedButton.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct RaisedButton: View {
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

struct RaisedButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            RaisedButton(buttonText: "Test", action: {
                print("Hello")
            })
            .buttonStyle(RaisedButtonStyle())
            .padding(20)
        }
        .background(.gray)
        .previewLayout(.sizeThatFits)
    }
}

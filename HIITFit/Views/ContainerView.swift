//
//  ContainerView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct ContainerView<Content: View>: View {
    var content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.gray)
            VStack {
                Spacer()
                Rectangle()
                    .frame(height: 25)
                    .foregroundColor(.gray)
            }
            content
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView {
            VStack {
                RaisedButton(buttonText: "Hello World") {

                }
                .padding(50)
                Button("Tap me") {

                }
                .buttonStyle(EmbossedButtonStyle(buttonShape: .round))
            }
        }
        .padding(50)
        .previewLayout(.sizeThatFits)
    }
}

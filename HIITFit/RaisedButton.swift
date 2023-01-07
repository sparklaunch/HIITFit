//
//  RaisedButton.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/08.
//

import SwiftUI

struct RaisedButton: View {
    var body: some View {
        Button {

        } label: {
            Text("Get Started")
                .raisedButtonTextStyle()
        }
    }
}

struct RaisedButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            RaisedButton()
                .padding(20)
        }
        .background(.gray)
        .previewLayout(.sizeThatFits)
    }
}

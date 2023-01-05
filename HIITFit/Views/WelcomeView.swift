//
//  WelcomeView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: NSLocalizedString("Welcome", comment: "Greeting"))
                Spacer()
                Button {
                    
                } label: {
                    Text(NSLocalizedString("History", comment: "View user activity"))
                }
                .padding(.bottom)
            }
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text(NSLocalizedString("Get Fit", comment: "Invitation to exercise"))
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("StepUp")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
                Button {
                    
                } label: {
                    Text(NSLocalizedString("Get Started", comment: "Invitation"))
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(.gray, lineWidth: 2)
                )
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

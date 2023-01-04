//
//  SuccessView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Button {
                    
                } label: {
                    Text("Continue")
                }
                .padding(.bottom)
            }
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Good job completing all four exercises!\nRemember tomorrow's another day.\nSo eat well and get some rest.")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}

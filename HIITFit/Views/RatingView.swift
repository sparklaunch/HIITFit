//
//  RatingView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
            .previewLayout(.sizeThatFits)
    }
}

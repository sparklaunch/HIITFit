//
//  RatingView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct RatingView: View {
    let exerciseIndex: Int
    @AppStorage("ratings") private var ratings = "4000"
    @State private var rating = 0
    let maximumRating = 5
    let onColor: Color = .red
    let offColor: Color = .gray
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index > rating ? offColor : onColor)
                    .onTapGesture {
                        updateRating(index: index)
                    }
                    .onAppear {
                        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
                        let character = ratings[index]
                        rating = character.wholeNumberValue ?? .zero
                    }
            }
        }
        .font(.largeTitle)
    }
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
}

struct RatingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        ratings = nil
        return RatingView(exerciseIndex: .zero)
            .previewLayout(.sizeThatFits)
    }
}

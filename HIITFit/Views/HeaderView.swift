//
//  HeaderView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct HeaderView: View {
    let exerciseString: String
    var body: some View {
        VStack {
            Text(exerciseString)
                .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(exerciseString: "Squat")
                .previewLayout(.sizeThatFits)
            HeaderView(exerciseString: "Squat")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

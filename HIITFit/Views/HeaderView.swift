//
//  HeaderView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct HeaderView: View {
    @Binding var selectedTab: Int
    let titleText: String
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach(.zero ..< Exercise.exercises.count) { index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)")
                }
            }
            .font(.title)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(selectedTab: .constant(.zero), titleText: "Squat")
                .previewLayout(.sizeThatFits)
            HeaderView(selectedTab: .constant(1), titleText: "Squat")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let index: Int
    let videoNames = ["Squat", "StepUp", "Burpee", "SunSalute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseString: exerciseNames[index])
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: videoNames[index], withExtension: "mp4") {
                    VideoPlayer(player: .init(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(videoNames[index]).mp4.")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 90))
                Text("Start/Done button")
                Text("Rating")
                Text("History button")
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: .zero)
    }
}

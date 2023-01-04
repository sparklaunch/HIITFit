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
    var body: some View {
        VStack {
            HeaderView(exerciseString: exerciseNames[index])
            if let url = Bundle.main.url(forResource: videoNames[index], withExtension: "mp4") {
                VideoPlayer(player: .init(url: url))
            } else {
                Text("Couldn't find \(videoNames[index]).mp4.")
                    .foregroundColor(.red)
            }
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("History button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: .zero)
    }
}

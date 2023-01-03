//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI

struct ExerciseView: View {
    let index: Int
    let videoNames = ["Squat", "StepUp", "Burpee", "SunSalute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    var body: some View {
        VStack {
            VStack {
                Text(exerciseNames[index])
                    .font(.largeTitle)
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                    Image(systemName: "4.circle")
                }
                .font(.title)
            }
            Text("Video player")
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

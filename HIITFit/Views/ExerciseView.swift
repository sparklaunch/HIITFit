//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @State private var rating = 0
    @Binding var selectedTab: Int
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    let index: Int
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: "mp4") {
                    VideoPlayer(player: .init(url: url))
                        .frame(height: geometry.size.height * 0.45)
                } else {
                    Text("Couldn't find \(Exercise.exercises[index].videoName).mp4.")
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: 90))
                HStack(spacing: 150) {
                    Button {
                        
                    } label: {
                        Text("Start Exercise")
                    }
                    Button {
                        selectedTab = lastExercise ? 9 : selectedTab + 1
                    } label: {
                        Text("Done")
                    }
                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                Spacer()
                Button(NSLocalizedString("History", comment: "View user activity")) {
                    
                }
                .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(1), index: .zero)
    }
}

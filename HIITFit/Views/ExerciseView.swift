//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @EnvironmentObject var historyStore: HistoryStore
    @State private var showSuccess = false
    @State private var showHistory = false
    @Binding var selectedTab: Int
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    let index: Int
    @State private var timerDone = false
    @State private var showTimer = false
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
                HStack(spacing: 150) {
                    Button {
                        showTimer.toggle()
                    } label: {
                        Text("Start Exercise")
                    }
                    Button {
                        historyStore.addDoneExercise(Exercise.exercises[index].exerciseName)
                        timerDone = false
                        showTimer.toggle()
                        if lastExercise {
                            showSuccess.toggle()
                        } else {
                            selectedTab += 1
                        }
                    } label: {
                        Text("Done")
                    }
                    .disabled(!timerDone)
                    .sheet(isPresented: $showSuccess) {
                        SuccessView(selectedTab: $selectedTab)
                    }
                }
                .font(.title3)
                .padding()
                if showTimer {
                    TimerView(timerDone: $timerDone)
                }
                Spacer()
                RatingView(exerciseIndex: index)
                    .padding()
                Button(NSLocalizedString("History", comment: "View user activity")) {
                    showHistory.toggle()
                }
                .padding(.bottom)
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(3), index: 3)
            .environmentObject(HistoryStore())
    }
}

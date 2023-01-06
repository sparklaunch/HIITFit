//
//  HistoryStore.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id: UUID = .init()
    let date: Date
    var exercises: [String] = []
}

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    init() {
//#if DEBUG
//        createDevelopmentData()
//#endif
    }
    /// Add a finished exercise into the store.
    ///   - parameters:
    ///     - _: The name of the finished exercise.
    func addDoneExercise(_ exerciseName: String) {
        let today: Date = .init()
        if let firstDate = exerciseDays.first?.date, today.isSameDay(as: firstDate) {
            print("Adding \(exerciseName)")
            exerciseDays[0].exercises.append(exerciseName)
        } else {
            exerciseDays.insert(ExerciseDay(date: today, exercises: [exerciseName]), at: 0)
        }
    }
}

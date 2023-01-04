//
//  HistoryStoreDevelopmentData.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import Foundation

extension HistoryStore {
    mutating func createDevelopmentData() {
        exerciseDays = [.init(date: .init().addingTimeInterval(-86400), exercises: [Exercise.exercises[0].exerciseName, Exercise.exercises[1].exerciseName, Exercise.exercises[2].exerciseName]), .init(date: .init().addingTimeInterval(TimeInterval(-86400 * 2)), exercises: [Exercise.exercises[1].exerciseName, Exercise.exercises[0].exerciseName])]
    }
}

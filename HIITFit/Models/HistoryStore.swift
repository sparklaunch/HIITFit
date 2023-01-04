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

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
}

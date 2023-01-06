//
//  HistoryStore.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import Foundation

enum FileError: Error {
    case loadFailure
    case saveFailure
    case urlFailure
}

struct ExerciseDay: Identifiable {
    let id: UUID = .init()
    let date: Date
    var exercises: [String] = []
}

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    init(withChecking: Bool) throws {
        //#if DEBUG
        //        createDevelopmentData()
        //#endif
        do {
            try load()
        } catch {
            throw error
        }
    }
    init() {

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
        do {
            try save()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    func load() throws {

    }
    func save() throws {
        guard let dataURL = getURL() else {
            throw FileError.urlFailure
        }
        let result: (ExerciseDay) -> [Any] = { exerciseDay in
            return [
                exerciseDay.id.uuidString,
                exerciseDay.date,
                exerciseDay.exercises
            ]
        }
        let plistData = exerciseDays.map(result)
        do {
            let data = try PropertyListSerialization.data(fromPropertyList: plistData, format: .binary, options: .zero)
            try data.write(to: dataURL, options: .atomic)
        } catch {
            throw FileError.saveFailure
        }
    }
    func getURL() -> URL? {
        guard let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return nil
        }
        return documentsURL.appendingPathComponent("history.plist")
    }
}

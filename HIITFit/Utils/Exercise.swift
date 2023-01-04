//
//  Exercise.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    enum ExerciseEnum: String {
        case squat = "Squat"
        case stepUp = "Step Up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
}

extension Exercise {
    static let exercises: [Self] = [.init(exerciseName: ExerciseEnum.squat.rawValue, videoName: "Squat"), .init(exerciseName: ExerciseEnum.stepUp.rawValue, videoName: "StepUp"), .init(exerciseName: ExerciseEnum.burpee.rawValue, videoName: "Burpee"), .init(exerciseName: ExerciseEnum.sunSalute.rawValue, videoName: "SunSalute")]
}

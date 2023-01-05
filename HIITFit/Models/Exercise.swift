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
    enum ExerciseEnum: CustomStringConvertible {
        case squat
        case stepUp
        case burpee
        case sunSalute
        var description: String {
            switch self {
                case .squat:
                    return NSLocalizedString("Squat", comment: "Exercise")
                case .stepUp:
                    return NSLocalizedString("Step Up", comment: "Exercise")
                case .burpee:
                    return NSLocalizedString("Burpee", comment: "Exercise")
                case .sunSalute:
                    return NSLocalizedString("Sun Salute", comment: "Yoga stretch")
            }
        }
    }
}

extension Exercise {
    static let exercises: [Self] = [.init(exerciseName: .init(describing: ExerciseEnum.squat), videoName: "Squat"), .init(exerciseName: .init(describing: ExerciseEnum.stepUp), videoName: "StepUp"), .init(exerciseName: .init(describing: ExerciseEnum.burpee), videoName: "Burpee"), .init(exerciseName: .init(describing: ExerciseEnum.sunSalute), videoName: "SunSalute")]
}

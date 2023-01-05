//
//  DateExtension.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import Foundation

extension Date {
    /// Format a date using the specified format.
    ///   - parameters:
    ///      - format: A date pattern string like "MM dd".
    func formatted(as format: String) -> String {
        let dateFormatter: DateFormatter = .init()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    /// Check whether a date is the same date or not.
    ///   - parameters:
    ///     - date: A date to which it's compared.
    func isSameDay(as date: Date) -> Bool {
        return self == date
    }
}

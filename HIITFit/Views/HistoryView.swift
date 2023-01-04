//
//  HistoryView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct HistoryView: View {
    let today: Date = .init()
    let yesterday: Date = .init().addingTimeInterval(-86400)
    let exercises1 = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let exercises2 = ["Squat", "Step Up", "Burpee"]
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            Form {
                Section {
                    ForEach(exercises1, id: \.self) { exercise in
                        Text(exercise)
                    }
                } header: {
                    Text(today.formatted(as: "MMM d"))
                        .font(.headline)
                }
                Section {
                    ForEach(exercises2, id: \.self) { exercise in
                        Text(exercise)
                    }
                } header: {
                    Text(yesterday.formatted(as: "MMM d"))
                        .font(.headline)
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}

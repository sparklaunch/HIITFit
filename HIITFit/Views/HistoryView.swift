//
//  HistoryView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    let historyStore: HistoryStore = .init()
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                showHistory.toggle()
            } label: {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)
            VStack {
                Text(NSLocalizedString("History", comment: "View user activity"))
                    .font(.title)
                    .padding()
                Form {
                    ForEach(historyStore.exerciseDays) { exerciseDay in
                        Section {
                            ForEach(exerciseDay.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        } header: {
                            Text(exerciseDay.date.formatted(as: "MMM d"))
                                .font(.headline)
                        }
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
    }
}

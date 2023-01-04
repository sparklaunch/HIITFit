//
//  HistoryView.swift
//  HIITFit
//
//  Created by 신정훈 on 2023/01/04.
//

import SwiftUI

struct HistoryView: View {
    let historyStore: HistoryStore = .init()
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                
            } label: {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)
            VStack {
                Text("History")
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
        HistoryView()
    }
}

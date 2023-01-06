//
//  HIITFitApp.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI

@main
struct HIITFitApp: App {
    @State private var showAlert = false
    @StateObject private var historyStore: HistoryStore
    init() {
        let historyStore: HistoryStore
        do {
            historyStore = try .init(withChecking: true)
        } catch {
            print("Could not load history data")
            historyStore = .init()
            showAlert = true
        }
        _historyStore = .init(wrappedValue: historyStore)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(historyStore)
                .alert(isPresented: $showAlert) {
                    .init(title: .init("History"), message: .init("""
Unfortunately we can't load your history.
"""))
                }
        }
    }
}

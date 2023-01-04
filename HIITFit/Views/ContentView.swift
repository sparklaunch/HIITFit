//
//  ContentView.swift
//  HIITFit
//
//  Created by Jinwook Kim on 2023/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ForEach(0 ..< Exercise.exercises.count) { index in
                ExerciseView(index: index)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

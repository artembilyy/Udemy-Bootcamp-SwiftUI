//
//  ContentView.swift
//  EggTimerSwiftUI
//
//  Created by Artem Bilyi on 19.02.2023.
//
import SwiftUI

struct ContentView: View {

    let question = "How do you like your eggs?"
    @State private var totalTime = 0.0
    @State private var secondsPassed = 0.0
    @State private var isTimerRunning = false
    @State private var timer: Timer?
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Egg Timer")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.top, 30)
                    Spacer()
                    Text(isTimerRunning ? "Preparing..." : question.capitalized)
                        .font(.title)
                        .foregroundColor(.white)
                }
                VStack {
                    HStack {
                        EggView(kind: "soft", time: 10) { time in
                            eggPressed(preparing: time)
                        }
                        EggView(kind: "medium", time: 20) { time in
                            eggPressed(preparing: time)
                        }
                        EggView(kind: "hard", time: 30) { time in
                            eggPressed(preparing: time)
                        }
                    }
                    .padding()
                    if totalTime > 0 {
                        Spacer()
                        ProgressFooterView(totalTime: totalTime, secondsPassed: secondsPassed)
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
    
    private func eggPressed(preparing time: Double) {
        timer?.invalidate()
        isTimerRunning = true
        secondsPassed = 0
        totalTime = 0
        totalTime = time
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.timer = timer
            if secondsPassed < time {
                secondsPassed += 1
            } else {
                timer.invalidate()
                reset()
            }
        }
    }
    
    private func reset() {
        isTimerRunning = false
        secondsPassed = 0.0
        totalTime = 0.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  QuizzlerSwiftUI
//
//  Created by Artem Bilyi on 20.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: CGFloat = 0.5
    @State private var pointsEarned: Int = 250
    
    var body: some View {
        ZStack {
            Color(.systemIndigo)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Points earned")
                    .foregroundColor(.white)
                    .font(.title)
                
                Text("\(pointsEarned)")
                    .foregroundColor(.white)
                    .font(.system(size: 80, weight: .bold))
                Spacer()
                Button(action: {
                    // Handle true button action
                }) {
                    Text("TRUE")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Handle false button action
                }) {
                    Text("FALSE")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                ProgressView(value: progress)
                    .accentColor(.white)
                    .padding(.horizontal, 20)
            }
            Image("Background-Bubbles")
                .resizable()
                .scaledToFit()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

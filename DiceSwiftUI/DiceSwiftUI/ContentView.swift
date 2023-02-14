//
//  ContentView.swift
//  DiceSwiftUI
//
//  Created by Artem Bilyi on 13.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var leftDice = 1
    @State var rightDice = 1
    
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDice)
                    DiceView(number: rightDice)
                }
                Spacer()
                Button("Roll") {
                    leftDice = Int.random(in: 1...6)
                    rightDice = Int.random(in: 1...6)
                }
                .font(.system(size: 32))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .frame(width: 150, height: 60, alignment: .center)
                .background(Color(.systemRed))
                .cornerRadius(12)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

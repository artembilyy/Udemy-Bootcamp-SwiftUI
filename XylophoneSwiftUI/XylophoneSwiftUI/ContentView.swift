//
//  ContentView.swift
//  XylophoneSwiftUI
//
//  Created by Artem Bilyi on 17.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ItemView(color: .red, character: "C", padding: 0)
            ItemView(color: .orange, character: "D", padding: 5)
            ItemView(color: .yellow, character: "E", padding: 10)
            ItemView(color: .green, character: "F", padding: 15)
            ItemView(color: .cyan, character: "G", padding: 20)
            ItemView(color: .blue, character: "A", padding: 25)
            ItemView(color: .purple, character: "B", padding: 30)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
